<?php

namespace App\Http\Controllers\Laundry\Admin;

use Carbon\Carbon;
use App\Models\User;
use App\Models\Transaction;
use Illuminate\Http\Request;
use App\Services\Notification;
use App\Http\Controllers\Controller;

class DashboardController extends Controller
{
    public function index()
    {
        $currentMonth = Carbon::now()->month;
        $currentYear = Carbon::now()->year;

        // Data pendapatan dan jumlah transaksi per tahun dan per bulan
        $transactions = Transaction::selectRaw('YEAR(created_at) as year, MONTH(created_at) as month, SUM(price) as total_price, COUNT(*) as total_transactions')
            ->where('status', '=', 'retrieved')
            ->groupBy('year', 'month')
            ->orderBy('year', 'asc')
            ->orderBy('month', 'asc')
            ->get();

        // Total pendapatan dan jumlah transaksi untuk bulan ini
        $totalIncome = Transaction::whereMonth('created_at', $currentMonth)
            ->whereYear('created_at', $currentYear)
            ->where('status', '=', 'retrieved')
            ->sum('price');

        $totalTransactions = Transaction::whereMonth('created_at', $currentMonth)
            ->whereYear('created_at', $currentYear)
            ->where('status', '=', 'retrieved')
            ->count();

        // Mengumpulkan data untuk grafik
        $chartData = [];
        foreach ($transactions as $data) {
            $year = $data->year;
            $month = $data->month;
            $totalPrice = $data->total_price;
            $totalTransactions = $data->total_transactions;

            $chartData[] = [
                'year' => $year,
                'month' => $month,
                'total_price' => $totalPrice,
                'total_transactions' => $totalTransactions,
            ];
        }

        // Data pengguna
        $owners = User::whereHas('roles', function ($query) {
            $query->where('name', 'owner');
        })->get();

        $employees = User::whereHas('roles', function ($query) {
            $query->where('name', 'employee');
        })->get();

        $customers = User::whereHas('roles', function ($query) {
            $query->where('name', 'customer');
        })->get();

        // Notifikasi
        $notification = Notification::getNotifications();

        return view('laundry.admin.pages.dashboard.index', compact('transactions', 'totalIncome', 'totalTransactions', 'chartData', 'owners', 'employees', 'customers', 'notification'));
    }

    // public function index()
    // {
    //     $currentMonth = Carbon::now()->month;
    //     $currentYear = Carbon::now()->year;

    //     $transactions = Transaction::selectRaw('YEAR(created_at) as year, MONTH(created_at) as month, SUM(price) as total_price')
    //         ->whereYear('created_at', $currentYear)
    //         ->where('status', '=', 'retrieved')
    //         ->groupBy('year', 'month')
    //         ->orderBy('year', 'asc')
    //         ->orderBy('month', 'asc')
    //         ->get();

    //     $totalIncome = Transaction::whereMonth('created_at', $currentMonth)
    //         ->whereYear('created_at', $currentYear)
    //         ->where('status', '=', 'retrieved')
    //         ->sum('price');

    //     $totalTransactions = Transaction::whereMonth('created_at', $currentMonth)
    //         ->whereYear('created_at', $currentYear)
    //         ->where('status', '=', 'retrieved')
    //         ->count();

    //     $chartData = [];
    //     foreach ($transactions as $data) {
    //         $year = $data->year;
    //         $month = $data->month;
    //         $totalPrice = $data->total_price;

    //         $chartData[] = [
    //             'year' => $year,
    //             'month' => $month,
    //             'total_price' => $totalPrice,
    //         ];
    //     }

    //     $owners = User::whereHas('roles', function ($query) {
    //         $query->where('name', 'owner');
    //     })->get();

    //     $employees = User::whereHas('roles', function ($query) {
    //         $query->where('name', 'employee');
    //     })->get();

    //     $customers = User::whereHas('roles', function ($query) {
    //         $query->where('name', 'customer');
    //     })->get();

    //     $notification = Notification::getNotifications();
    //     return view('laundry.admin.pages.dashboard.index', compact('transactions', 'totalIncome', 'totalTransactions', 'chartData', 'owners', 'employees', 'customers', 'notification'));
    // }
}
