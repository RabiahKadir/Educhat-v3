<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\AuthController;

Route::get('/admin',[AuthController::class, 'index'])->name('admin');
Route::post('/LoginAction',[AuthController::class, 'LoginAction'])->name('LoginAction');
Route::get('/logout',[AuthController::class, 'LogoutSes'])->name('logout');
Route::get('/',[HomeController::class, 'index'])->name('');
Route::post('/result',[HomeController::class, 'ChatPost'])->name('result');
Route::get('/getChat',[HomeController::class, 'getChat'])->name('getChat');

Route::get('/admin/dashboard',[AdminController::class, 'Home'])->name('admin/dashboard');
Route::get('/admin/templates',[AdminController::class, 'MasterOpd'])->name('admin/templates');
Route::post('/admin/opdInsert',[AdminController::class, 'opdInsert'])->name('admin/opdInsert');
Route::post('/admin/opdUpdate',[AdminController::class, 'opdUpdate'])->name('admin/opdUpdate');
Route::post('/admin/opdDelete',[AdminController::class, 'opdDelete'])->name('admin/opdDelete');