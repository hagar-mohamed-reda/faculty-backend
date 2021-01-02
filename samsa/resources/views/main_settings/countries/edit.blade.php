@extends('layouts.admin')
@section('title') {{ __('countries') }} @endsection
@section('content')

@php
$links = [
['name' => __('home'), 'url' => url('/')],
['name' => __('countries'), 'url' => url('/countries')],
['name' => __('edit country'), 'active' => true],
];
@endphp
@include('layouts.breadcrumb', ['links' => $links])

    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h3>{{ __('edit') }}</h3>
                </div>
                <div class="card-body">
                    {!! Form::model($country, ['method'=>'put','route'=>['countries.update',$country->id],'files'=>'true'])!!}
                    @include('main_settings.countries.form')
                    <button type="submit" class="btn btn-primary waves-effect waves-light">{{ __('save') }}</button>
                    {!!Form::close()!!}
                </div>
            </div>
        </div>
    </div>
@endsection
