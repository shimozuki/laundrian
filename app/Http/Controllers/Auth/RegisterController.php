<?php

namespace App\Http\Controllers\Auth;  
  
use App\Http\Controllers\Controller;  
use Illuminate\Foundation\Auth\AuthenticatesUsers;  
use Illuminate\Http\Request;  
use App\Providers\RouteServiceProvider;  
  
class LoginController extends Controller  
{  
    use AuthenticatesUsers;  
  
    protected $redirectTo = RouteServiceProvider::HOME;  
  
    public function __construct()  
    {  
        $this->middleware('guest')->except('logout');  
    }  
  
    public function showLoginForm()  
    {  
        return view('auth.page.index'); 
    }  
  
    public function login(Request $request)  
    {  
        $request->validate([  
            'username' => 'required',  
            'password' => 'required',  
        ]);  
  
        $loginCredentials = [  
            'username' => $request->username,  
            'password' => $request->password  
        ];  
  
        if (auth()->attempt($loginCredentials)) {  
            return redirect()->intended($this->redirectTo);  
        }  
  
        return back()->withErrors([  
            'username' => 'The provided credentials do not match our records.',  
        ]);  
    }  
}  

