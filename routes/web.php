<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\RegistrationController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\LogoutController;


Route::get('/login', function () {
    return view('login');
})->name('login');

Route::post('/login', [LoginController::class, 'login'])->name('login.post');

Route::get('/signup', function () {
    return view('signup');
})->name('signup');

Route::post('/signup', [RegistrationController::class, 'sign_up'])->name('signup.post');
Route::post('/logout', [LogoutController::class, 'logout'])->name('logout')->middleware('auth');


// Authenticated routes
Route::group(['middleware'=>['UserCheckAuth']],function(){
    Route::get('/', [ContactController::class, 'index'])->name('home');
    Route::post('/addcontact', [ContactController::class, 'add'])->name('contact.add');
    Route::get('/delete/{id}', [ContactController::class, 'delete'])->name('contact.delete');
    Route::get('/edit/{id}', [ContactController::class, 'edit'])->name('contact.edit');
    Route::post('/edit/{id}', [ContactController::class, 'update'])->name('contact.update');
});
