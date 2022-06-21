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
    
    <section class="content">
    <div class="container-fluid">
    <div class="row">
    <div class="col-12">   
    <div class="card">
    <div class="card-header">
    <h3 class="card-title">List of household</h3>
    </div>
    
    <div class="card-body">
    <table id="example1" class="table table-bordered table-striped">
    <thead>
    <tr>
    <th>Control number</th>
    <th>Municipality</th>
    <th>Barangay</th>
    <th>Purok</th>
    <th>Latitude</th>
    <th>Longitude</th>
    <th>Longitude</th>
    <th>Name of respondent</th>

    </tr>
    </thead>
    <tbody>
    @foreach ($households as $household)
        <tr>
        <td>{{$household->controlnumber}}</td>
        <td>{{$household->libmunicipalitie_psgccode}}</td>
        <td>{{$household->libbarangay_psgccode}}</td>
        <td>{{$household->libbarangay_psgccode}}</td>
        <td>{{$household->purok}}</td>
        <td>{{$household->latitude}}</td>
        <td>{{$household->longitude}}</td>
        <td>{{$household->respondent}}</td>
        </tr>
    @endforeach  
    </tbody>
    
    </table>
    </div>
    
    </div>
    
    </div>
    
    </div>
    
    </div>
    
    </section>
    
    </div>

    @endsection

@section('pagespecificscripts')
<script src="{{asset('backend/plugins/datatables/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('backend/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js')}}"></script>
<script src="{{asset('backend/plugins/datatables-responsive/js/dataTables.responsive.min.js')}}"></script>
<script src="{{asset('backend/plugins/datatables-responsive/js/responsive.bootstrap4.min.js')}}"></script>
<script src="{{asset('backend/plugins/datatables-buttons/js/dataTables.buttons.min.js')}}"></script>
<script src="{{asset('backend/plugins/datatables-buttons/js/buttons.bootstrap4.min.js')}}"></script>
<script src="{{asset('backend/plugins/jszip/jszip.min.js')}}"></script>
<script src="{{asset('backend/plugins/pdfmake/pdfmake.min.js')}}"></script>
<script src="{{asset('backend/plugins/pdfmake/vfs_fonts.js')}}"></script>
<script src="{{asset('backend/plugins/datatables-buttons/js/buttons.html5.min.js')}}"></script>
<script src="{{asset('backend/plugins/datatables-buttons/js/buttons.print.min.js')}}"></script>
<script src="{{asset('backend/plugins/datatables-buttons/js/buttons.colVis.min.js')}}"></script>
@endsection
