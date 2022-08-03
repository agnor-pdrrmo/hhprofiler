@extends('backend.layouts.app')
@section('content')

<div class="content-wrapper">
    
    <section-header-component title="Pivot Table" breadcrumbitem="Home" breadcrumbitemactive="Pivot table"></section-header-component>
    <families-population-pivot></families-population-pivot>
    <ul>
        @foreach ($households as $household)
            @foreach ($household as $demog)
                <li>{{$demog->libbarangay_psgccode}} ({{$demog->demography_count}})</li>
            @endforeach
        @endforeach
    </ul>
    
        
</div>

@endsection