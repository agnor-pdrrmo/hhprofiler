<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Libmunicipalitie;
use App\Http\Resources\LibmunicipalitieResource;

class LibmunicipalitieController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $municipalities = Libmunicipalitie::withCount(['households' =>function($query){
            $query->withFilters(
                request()->input('municipalities',[]),
                request()->input('barangays',[]),
                request()->input('typeofbuildings',[]),
                request()->input('hhtenuralstatus',[]),
                request()->input('hhroofmaterials',[]),
                request()->input('accesstoelectricity',[]),
            );
        }])
        ->with(['libbarangays' => function($q){
            $q->withCount(['households' =>function($query){
                $query->withFilters(
                    request()->input('municipalities',[]),
                    request()->input('barangays',[]),
                    request()->input('typeofbuildings',[]),
                    request()->input('hhtenuralstatus',[]),
                    request()->input('hhroofmaterials',[]),
                    request()->input('accesstoelectricity',[]),
                );
            }]);
        }])
        ->get();

        return LibmunicipalitieResource::collection($municipalities);
        //return $municipalities;
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
