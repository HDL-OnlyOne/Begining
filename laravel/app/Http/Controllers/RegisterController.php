<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

class RegisterController extends Controller
{
    public function index()
    {
        return view('register/index');
    }

    public function register()
    {
        $this->validate(request(),[
            'name' => 'required|min:3|unique:users,name',
            'email' => 'required|unique:users,email|email',
            'password' => 'required|min:5|confirmed'
        ]);

        $name = request('name');
        $email = request('email');
        $password = bcrypt(request('password'));
        User::create(compact('name','email','password'));

        return redirect('/login');
    }

}
