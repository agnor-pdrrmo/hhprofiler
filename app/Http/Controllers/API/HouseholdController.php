<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Household;
use App\Http\Resources\HouseholdResource;

class HouseholdController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $household = Household::withFilters(
            request()->input('municipalities',[]),
            request()->input('barangays',[]),
            request()->input('typeofbuildings',[]),
            request()->input('hhtenuralstatus',[]),
            request()->input('hhroofmaterials',[]),
            request()->input('accesstoelectricity',[]),
            
        )->get();
        //return LibbarangayResource::collection($barangays);
        $householdResource = $household->load(
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
        );
 
        return array(
                 'household'=>$householdResource,
                 'has_access_electricity_count'=>$householdResource->where('access_electricity','=',1)->count(),
                 'no_access_electricity_count'=>$householdResource->where('access_electricity','=',0)->count()
        );
    }

    public function accessElectricity(){
        
        $household = Household::withFilters(
            request()->input('municipalities',[]),
            request()->input('barangays',[]),
            request()->input('typeofbuildings',[]),
            request()->input('hhtenuralstatus',[]),
            request()->input('hhroofmaterials',[]),
            request()->input('accesstoelectricity',[]),
        )->get();

        return $household;       
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
