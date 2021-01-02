@extends('layouts.admin')
@section('title') {{ __('languages') }} @endsection

@section('content')

@php
$links = [
['name' => __('home'), 'url' => url('/')],
['name' => __('languages'), 'url' => url('/languages')],
['name' => __('edit language'), 'active' => true],
];
@endphp
@include('layouts.breadcrumb', ['links' => $links])

    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h3> {{ __('edit') }} </h3>
                </div>
                <div class="card-body">
                    {!! Form::model($language, ['method'=>'put','route'=>['languages.update',$language->id],'files'=>'true'])!!}
                    @include('main_settings.languages.form')
                    <button type="submit" class="btn btn-primary waves-effect waves-light"> {{ __('save') }} </button>
                    {!!Form::close()!!}
                </div>
            </div>
        </div>
    </div>
@endsection
