<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HouseholdController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/template', function () {
    return view('adminlte');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::get('/household',[HouseholdController::class,'index']);
Route::get('/household/maps',[HouseholdController::class,'maps'])->name('maps');
Route::get('/household/vue',[HouseholdController::class,'vuemap'])->name('vue');


