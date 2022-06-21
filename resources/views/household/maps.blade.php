@extends('backend.layouts.app')
@section('content')

<div class="content-wrapper">

    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                <h1>Households</h1>
                </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active">Household</li>
                </ol>
            </div>
            </div>
        </div>
    </section>
    
    <section class="content" >
        <div class="container-fluid" >
            <div class="row">
                <div class="col-12" >

                    <div id="map" class="mapael">
                        
                    </div>
                
                </div>
            
            </div>
        
        </div>
    
    </section>
    </div>

    @endsection


@section('pagespecificcss')
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.8.0/dist/leaflet.css"
        integrity="sha512-hoalWLoI8r4UszCkZ5kL8vayOGVae1oxXe/2A4AO6J9+580uKHDO3JdHb7NzwwzK5xr/Fs0W40kiNHxM9vyTtQ=="
        crossorigin=""/>
    
    <style>

            #map{
                position: relative;
                border: 1px solid black;
                border-radius: 8px;
                height: 90vh;  /* or as desired */
                width: 100%;  /* This means "100% of the width of its container", the .col-md-8 */

            }
    </style>
@endsection

@section('pagespecificscripts')
    <script src="https://unpkg.com/leaflet@1.8.0/dist/leaflet.js"
    integrity="sha512-BB3hKbKWOc9Ez/TAwyWxNXeoV9c1v6FIeYiBieIWkpLjauysF18NzgR1MBNBXf8/KABdlkX68nAhlwcDFLGPCQ=="
    crossorigin=""></script>
    <script>
        var map = L.map('map').setView([9.073408, 125.562208], 9);
        googleSat = L.tileLayer('http://{s}.google.com/vt?lyrs=s&x={x}&y={y}&z={z}',{
            maxZoom: 20,
            subdomains:['mt0','mt1','mt2','mt3']
        }).addTo(map);

        L.marker([9.073408, 125.562208]).addTo(map);


    </script>
@endsection
