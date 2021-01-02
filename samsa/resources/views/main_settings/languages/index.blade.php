@extends('layouts.admin')
@section('title') {{ __('languages') }} @endsection

@section('content')
@php
$links = [
['name' => __('home'), 'url' => url('/')],
['name' => __('languages'), 'active' => true],
];
@endphp
@include('layouts.breadcrumb', ['links' => $links])

     <div class="card">
        <div class="card-header">
            @permission('languages_create')
            <a class="btn btn-relief-primary mr-1 mb-1 waves-effect waves-light" href="{{route('languages.create')}}"><i class="ik ik-plus-circle"></i>{{__('create')}}</a>
            @endpermission
        </div>
        <div class="card-content">

            <div class="table-responsive">
                @include('main_settings.languages.table')
            </div>
        </div>
    </div>
@endsection
