@extends('backend.layouts.app')
@section('content')

<div class="content-wrapper">
    
    <section-header-component title="Pivot Table" breadcrumbitem="Home" breadcrumbitemactive="Pivot table"></section-header-component>
    <families-population-pivot></families-population-pivot>
    <ul>
        {{-- @foreach ($households as $household) --}}
                <li>{{$households['160212003']}}</li>
        {{-- @endforeach --}}
    </ul>
    
        
</div>

@endsection