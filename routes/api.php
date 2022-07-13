<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\HouseholdController;
use App\Http\Controllers\API\LibmunicipalitieController;
use App\Http\Controllers\API\LibbarangayController;
use App\Http\Controllers\API\LibhhtypeofbuildingController;
use App\Http\Controllers\API\LibhhtenuralstatuController;
use App\Http\Controllers\API\LibhhroofmaterialController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('households', [HouseholdController::class,'index']);
Route::get('access_electricity', [HouseholdController::class,'accessElectricity']);
Route::get('municipalities', [LibmunicipalitieController::class,'index']);
Route::get('barangays', [LibbarangayController::class,'index']);
Route::get('hhtypeofbuildings', [LibhhtypeofbuildingController::class,'index']);
Route::get('hhtenuralstatus', [LibhhtenuralstatuController::class,'index']);
Route::get('hhroofmaterials', [LibhhroofmaterialController::class,'index']);