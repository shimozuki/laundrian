<?php

namespace App\Http\Controllers\Laundry\Customer;

use Carbon\Carbon;
use App\Models\Transaction;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Coupon;
use App\Models\Package;
use App\Models\TransactionDetail;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use RealRashid\SweetAlert\Facades\Alert;

class TransactionController extends Controller
{
    public function index()
    {
        $customerId = Auth::id();
        $package = Package::where('status', 'active')->orderBy('id', 'ASC')->get();

        $start = Carbon::now()->startOfMonth()->format('Y-m-d H:i:s');
        $end = Carbon::now()->endOfMonth()->format('Y-m-d H:i:s');

        if (request()->date != '') {
            $date = explode(' - ', request()->date);
            $start = Carbon::parse($date[0])->format('Y-m-d') . ' 00:00:01';
            $end = Carbon::parse($date[1])->format('Y-m-d') . ' 23:59:59';
        }

        $transaction = Transaction::whereHas('detail', function ($query) use ($customerId) {
            $query->where('customer_id', $customerId);
        })->with(['customer', 'detail'])->whereBetween('created_at', [$start, $end])->orderBy('created_at', 'DESC')->get();
        return view('laundry.customer.pages.transaction.index', compact('transaction', 'package'));
    }

    public function transactionReceipt($invoice)
    {
        $transaction = Transaction::with('detail')->where('invoice', $invoice)->firstOrFail();
        return view('laundry.customer.pages.transaction.receipt', compact('transaction'));
    }

    public function store(Request $request)
    {
        $customerId = Auth::id();
        $customername = Auth::user();
        $request->validate([
            'package_id' => 'required|exists:packages,id',
            'coupon_id' => 'nullable|exists:coupons,id',
            'date' => 'required|date',
            'weight' => 'required|numeric|min:1',
            'price' => 'required|numeric|min:0',
            'amount' => 'nullable|numeric|min:0'
        ]);

        try {
            DB::beginTransaction();

            $lastTransaction = Transaction::orderBy('id', 'DESC')->first();
            $lastInvoiceNumber = $lastTransaction ? intval(substr($lastTransaction->invoice, 4)) : 0;
            $invoiceNumber = str_pad($lastInvoiceNumber + 1, 3, '0', STR_PAD_LEFT);
            $invoice = 'TRC-' . $invoiceNumber;

            $package = Package::findOrFail($request->package_id);

            $date = Carbon::parse($request->date)->format('d F Y');
            $day = Carbon::parse($request->date)->format('l');

            $couponValue = $request->filled('coupon_id') ? 'used' : 'not used';

            $transaction = Transaction::create([
                'invoice' => $invoice,
                'customer_name' => $customername->name,
                'customer_phone' => $customername->phone,
                'package' => $package->type,
                'day' => $day,
                'date' => $date,
                'weight' => $request->weight,
                'price' => $request->price,
                'coupon' => $couponValue,
                'status' => 'pending'
            ]);

            TransactionDetail::create([
                'transaction_id' => $transaction->id,
                'customer_id' => $customerId,
                'package_id' => $request->package_id,
                'coupon_id' => $request->coupon_id,
                'amount' => $request->amount ?? 0
            ]);

            if ($request->filled('coupon_id')) {
                $coupon = Coupon::findOrFail($request->coupon_id);
                $coupon->update(['status' => 'used']);
            }

            $coupon = Coupon::where('temporary', $customerId)->where('amount', '<', 10)->where('status', 'not used')->first();
            if ($coupon) {
                $coupon->increment('amount');
            } else {
                Coupon::create([
                    'customer_id' => $customerId,
                    'customer_name' => $customername->name,
                    'customer_phone' => $customername->phone,
                    'amount' => 1,
                    'status' => 'not used',
                    'temporary' => $customerId
                ]);
            }

            $totalPrice = $request->weight * $package->price;
            $paidAmount = $request->amount ?? 0;
            $remainingAmount = $totalPrice - $paidAmount;

            $message1 = "Halo {$customername->name}, transaksi Anda dengan nomor faktur {$invoice} telah berhasil dibuat.\n";
            $message1 .= "Rincian transaksi:\n";
            $message1 .= "- Paket: {$package->type}\n";
            $message1 .= "- Tanggal: {$date} ({$day})\n";
            $message1 .= "- Berat: {$request->weight} kg\n";
            $message1 .= "- Total Harga: IDR " . number_format($totalPrice) . "\n";

            if ($paidAmount > 0) {
                $message1 .= "- Jumlah yang dibayarkan: IDR " . number_format($paidAmount) . "\n";
                $message1 .= "- Sisa yang harus dibayar: IDR " . number_format($remainingAmount) . "\n";
            }

            $message1 .= "Terima kasih telah menggunakan layanan kami.";

            $this->sendMessage($customername->phone, $message1);

            DB::commit();

            session()->flash('invoice', $transaction->invoice);
            Alert::toast('<span class="toast-information">Transaksi berhasil dibuat</span>')->hideCloseButton()->padding('25px')->toHtml();
            return redirect()->back();
        } catch (\Exception $e) {
            DB::rollback();
            Alert::toast('<span class="toast-information">Terjadi kesalahan saat membuat transaksi: ' . $e->getMessage() . '</span>')->hideCloseButton()->padding('25px')->toHtml();
            return redirect()->back()->withErrors(['error' => 'Terjadi kesalahan: ' . $e->getMessage()]);
        }
    }
}
