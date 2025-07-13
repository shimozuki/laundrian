<?php

namespace App\Http\Controllers\Laundry\Admin;

use App\Models\Coupon;
use Illuminate\Http\Request;
use App\Services\Notification;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use RealRashid\SweetAlert\Facades\Alert;

class CouponController extends Controller
{
    public function index(Request $request)
    {
        $query = Coupon::query();

        $searchQuery = $request->q;
        $status = $request->status;

        if (!empty($searchQuery)) {
            $query->where(function ($q) use ($searchQuery) {
                $q->where('customer_name', 'LIKE', '%' . $searchQuery . '%')
                    ->orWhere('customer_phone', 'LIKE', '%' . $searchQuery . '%')
                    ->orWhere('amount', 'LIKE', '%' . $searchQuery . '%');
            });
        }

        if (!is_null($status) && $status !== '') {
            $query->where('status', $status);
        }

        $coupon = $query->orderBy('id', 'DESC')->paginate(30)->appends($request->except(['page', '_token']));

        $notification = Notification::getNotifications();
        return view('laundry.admin.pages.coupon.index', compact('coupon', 'notification'));
    }

    public function receive($id)
    {
        try {
            DB::beginTransaction();

            $coupon = Coupon::with(['customer'])->where('id', $id)->first();

            if ($coupon->status == 'not used') {
                $coupon->update([
                    'temporary' => NULL,
                    'status' => 'used'
                ]);
            }

            DB::commit();

            Alert::toast('<span class="toast-information">Kupon berhasil diterima</span>')->hideCloseButton()->padding('25px')->toHtml();
            return redirect()->back();
        } catch (\Exception $e) {
            DB::rollback();
            Alert::toast('<span class="toast-information">Terjadi kesalahan saat menerima kupon: ' . $e->getMessage() . '</span>')->hideCloseButton()->padding('25px')->toHtml();
            return redirect()->back();
        }
    }

    public function store(Request $request)
    {
        // Validasi input
        $request->validate([
            'customer_name'  => 'required|string|max:30',
            'customer_phone' => 'required|string|max:15',
            'amount'         => 'required|integer|min:1',
            'status'         => 'required|in:used,not used',
        ]);

        // Simpan data kupon
        Coupon::create([
            'customer_id'    => auth()->id(), // atau ganti sesuai relasi kamu
            'customer_name'  => $request->customer_name,
            'customer_phone' => $request->customer_phone,
            'amount'         => $request->amount,
            'status'         => $request->status,
        ]);

        return redirect()->route('admin.coupon')->with('success', 'Kupon berhasil ditambahkan.');
    }

    public function destroy(string $id)
    {
        try {
            DB::beginTransaction();

            $coupon = Coupon::findOrFail($id);
            $coupon->delete();

            DB::commit();

            Alert::toast('<span class="toast-information">Kupon berhasil dihapus</span>')->hideCloseButton()->padding('25px')->toHtml();
            return redirect()->back();
        } catch (\Exception $e) {
            DB::rollback();
            Alert::toast('<span class="toast-information">Terjadi kesalahan saat menghapus kupon: ' . $e->getMessage() . '</span>')->hideCloseButton()->padding('25px')->toHtml();
            return redirect()->back();
        }
    }
}
