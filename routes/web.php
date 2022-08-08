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

Route::get(
    '/',
    [HouseholdController::class,'index']
)
->name('home')
->middleware('auth');

// Temporary Route for development only 
Route::get('/template', function () {
    return view('adminlte');
})->name('template')
->middleware('auth');
Route::get('/maps',[HouseholdController::class,'maps'])->name('maps')->middleware('auth');
// Temporary Route for development only 

Auth::routes();

Route::get('/household',[HouseholdController::class,'index'])->name('gethouseholds')->middleware('auth');
Route::get('/pivot',[HouseholdController::class,'pivot'])->name('pivot')->middleware('auth');
Route::get('/test',function(){
    $household = App\Models\Household::with('librelationshiphead')->get();
    return json_encode($household);
})->middleware('auth');



