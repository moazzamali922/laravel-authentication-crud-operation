<?php

namespace App\Http\Controllers;
use App\Models\User;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Hash;
class LoginController extends Controller
{
    // public function login(Request $request)
    // {
    //     $request->validate([
    //         'email' => 'required|email',
    //         'password' => 'required',
    //     ]);

    //     $credentials = $request->only('email', 'password');

    //     if (Auth::attempt($credentials)) {
    //         return redirect()->route('home');
    //     }

    //     return back()->with('error', 'Invalid credentials');
    // }
    public function login(Request $request) {
        $request->validate([
            "email" => "required",
            "password" => "required",
        ]);
        
        $admin = User::where('email', '=', $request->email)->first();
    
        if ($admin) {
            if (Hash::check($request->password, $admin->password)) {
                $request->session()->put('crud_operation', $admin);
    
                return redirect()->route('home');
            } else {
                return back()->with('fail', 'Password Is Invalid');
            }
        } else {
            return back()->with('fail', 'Username Is Invalid');
        }
    }
}
