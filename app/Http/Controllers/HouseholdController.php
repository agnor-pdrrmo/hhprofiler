<?php

namespace App\Http\Controllers;
use App\Models\Household;

use Illuminate\Http\Request;

class HouseholdController extends Controller
{
    //
    public function index()
    {
        return view('household.index',[
            'households' => Household::all()
        ]);
    }

    public function maps()
    {
        //dd(Household::whereNotNull('latitude','longitude'))->all()->latitude;
        return view('household.maps',[
            'households' => Household::all()
        ]);
    }
}
