<?php

namespace App\Http\Controllers\Auth;  
  
use App\Http\Controllers\Controller;  
use Illuminate\Foundation\Auth\AuthenticatesUsers;  
use Illuminate\Http\Request;  
use App\Models\User;
use App\Providers\RouteServiceProvider;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Str;

class RegisterController extends Controller  
{  
    use AuthenticatesUsers;  
  
    protected $redirectTo = RouteServiceProvider::HOME;  
  
    public function __construct()  
    {  
        $this->middleware('guest')->except('logout');  
    }  
  
    public function showRegistrationForm()  
    {  
        return view('laundry.auth.pages.register.index'); 
    }  

    
}  

