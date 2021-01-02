@extends('layouts.admin')
@section('title') {{ __('cities') }} @endsection
@section('content')

@php
$links = [
['name' => __('home'), 'url' => url('/')],
['name' => __('cities'), 'url' => url('/cities')],
['name' => __('edit city'), 'active' => true],
];
@endphp
@include('layouts.breadcrumb', ['links' => $links])
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h3>{{ __('city') }} </h3>
                </div>
                <div class="card-body">
                    {!! Form::model($city, ['method'=>'put','route'=>['cities.update',$city->id],'files'=>'true'])!!}
                    @include('main_settings.cities.form')
                    <button type="submit" class="btn btn-primary waves-effect waves-light">{{ __('save') }}</button>
                    {!!Form::close()!!}
                </div>
            </div>
        </div>
    </div>
@endsection
