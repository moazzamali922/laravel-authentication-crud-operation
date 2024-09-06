<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class RegistrationController extends Controller
{
    public function sign_up(Request $request)
    {



        $user = new User();
        $user->name  = $request->name;
        $user->email  = $request->email;
        $user->password  = Hash::make($request->password);
        $user->save();





        Auth::login($user);

        return redirect()->route('login')->with('success', 'Account created and logged in successfully!');
    }
}
