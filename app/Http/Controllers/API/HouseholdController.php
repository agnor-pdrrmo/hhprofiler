<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Household;

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
            request()->input('accesstointernet',[]),
            request()->input('accesswatersupply',[]),
            request()->input('potable',[]),
            request()->input('hhwatertenuralstatus',[]),
            request()->input('libhhlvlwatersystems',[]),
            request()->input('floodsoccur',[]),
            request()->input('evacuateduringcalamity',[]),
            request()->input('accesstohealthmedicalfacilities',[]),
            request()->input('accesstotelecommunications',[]),
            
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
                 'no_access_electricity_count'=>$householdResource->where('access_electricity','=',0)->count(),
                 'has_access_internet_count'=>$householdResource->where('access_internet','=',1)->count(),
                 'no_access_internet_count'=>$householdResource->where('access_internet','=',0)->count(),
                 'has_accesswatersupply_count'=>$householdResource->where('access_watersupply','=',1)->count(),
                 'no_accesswatersupply_count'=>$householdResource->where('access_watersupply','=',0)->count(),
                 'is_potable_count'=>$householdResource->where('potable','=',1)->count(),
                 'not_potable_count'=>$householdResource->where('potable','=',0)->count(),
                 'has_floodsoccur_count'=>$householdResource->where('floods_occur','=',1)->count(),
                 'not_floodsoccur_count'=>$householdResource->where('floods_occur','=',0)->count(),
                 'evacuate_during_calamity_count'=>$householdResource->where('experience_evacuationduringcalamity','=',1)->count(),
                 'not_evacuate_during_calamity_count'=>$householdResource->where('experience_evacuationduringcalamity','=',0)->count(),
                 'has_accesstohealthmedicalfacilities_count'=>$householdResource->where('has_accesstohealthmedicalfacilities','=',1)->count(),
                 'no_accesstohealthmedicalfacilities_count'=>$householdResource->where('has_accesstohealthmedicalfacilities','=',0)->count(),
                 'has_accesstotelecommunications_count'=>$householdResource->where('has_accesstotelecommunications','=',1)->count(),
                 'no_accesstotelecommunications_count'=>$householdResource->where('has_accesstotelecommunications','=',0)->count()
        );
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
