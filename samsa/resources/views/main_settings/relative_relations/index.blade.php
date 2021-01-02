@extends('layouts.admin')
@section('title') {{ __('relative relations') }} @endsection
@section('content')
@php
$links = [
['name' => __('home'), 'url' => url('/')],
['name' => __('relative relations'), 'active' => true],
];
@endphp
@include('layouts.breadcrumb', ['links' => $links])

     <div class="card">
        <div class="card-header">
            @permission('relations_create')
            <a class="btn btn-relief-primary mr-1 mb-1 waves-effect waves-light" href="{{route('relations.create')}}"><i class="ik ik-plus-circle"></i>{{__('create')}} </a>
            @endpermission
        </div>
        <div class="card-content">

            <div class="table-responsive">
                @include('main_settings.relative_relations.table')
            </div>
        </div>
    </div>
@endsection
