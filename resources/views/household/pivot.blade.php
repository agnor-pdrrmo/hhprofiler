@extends('backend.layouts.app')
@section('content')

<div class="content-wrapper">
    
    <section-header-component title="Pivot Table" breadcrumbitem="Home" breadcrumbitemactive="Pivot table"></section-header-component>
    <families-population-pivot></families-population-pivot>
   
</div>

@endsection