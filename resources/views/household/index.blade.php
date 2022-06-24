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

                    <simple-map-component />
                
                </div>
            
            </div>
        
        </div>
    
    </section>

</div>

@endsection