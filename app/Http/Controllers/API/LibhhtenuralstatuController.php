<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Libhhtenuralstatu;
use App\Http\Resources\LibhhtenuralstatuResource;

class LibhhtenuralstatuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $hhtenuralstatus = Libhhtenuralstatu::withCount(['households' =>function($query){
            $query->withFilters(
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
                request()->input('accesstodrillsandsimulations',[]),
            );
        }])
        ->get();

        return LibhhtenuralstatuResource::collection($hhtenuralstatus);
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
