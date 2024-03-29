<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\Models\Household;

class HouseholdController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        
        // if(!$this->isLogin())
        //     return Redirect::to('login');
        if($request->ajax()) // This is check ajax request
        {
            $households = Household::all();
            return response()->json($households->load(
                'libmunicipalitie',
                'libbarangay',
                'libhhtypeofbuilding',
                'libhhtenuralstatu',
                'libhhroofmaterial',
                'libhhwatertenuralstatu',
                'libhhlvlwatersystem',
                'libhhevacuationarea',
                'demography.librelationshiphead',
                'demography.libgender',
                'demography.libmaritalstatu',
                'demography.libdisabilitie',
                'demography.libnutritionalstatu',
                'demography.libgradelvl',
                'demography.highestgradelvl',
                'availedprograms.libtypeofprogram',
                'livelihoods.liblivelihood',
                'livelihoods.libhhtenuralstatu'

            ));
        }

        return view('household.index');
    }

    public function maps()
    {
        //dd(Household::whereNotNull('latitude','longitude'))->all()->latitude;
        return view('household.maps',[
            'households' => Household::all()
        ]);
    }


    public function vuemap()
    {
        $households = Household::all();
        return response()->json($households);
    }

    public function pivot()
    {
        return view('household.pivot',[
            'households' => Household::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
