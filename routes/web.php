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

// Temporary Route for development only 
Route::get('/template', function () {
    return view('adminlte');
})->name('template');
Route::get('/maps',[HouseholdController::class,'maps'])->name('maps');
// Temporary Route for development only 

Auth::routes();

Route::get('/home',[HouseholdController::class,'index'])->name('home');
Route::get('/household',[HouseholdController::class,'index'])->name('gethouseholds');
Route::get('/pivot',[HouseholdController::class,'pivot'])->name('pivot');
Route::get('/test',function(){
    $household = App\Models\Household::with('librelationshiphead')->get();
    return json_encode($household);
});



