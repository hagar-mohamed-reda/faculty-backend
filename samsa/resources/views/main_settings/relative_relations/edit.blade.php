@extends('layouts.admin')
@section('title') {{ __('relative relations') }} @endsection
@section('content')

@php
$links = [
['name' => __('home'), 'url' => url('/')],
['name' => __('relative relations'), 'url' => url('/relations')],
['name' => __('edit').' '.__('relative relations'), 'active' => true],
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
                    {!! Form::model($relativeRelation, ['method'=>'put','route'=>['relations.update',$relativeRelation->id],'files'=>'true'])!!}
                    @include('main_settings.relative_relations.form')
                    <button type="submit" class="btn btn-primary waves-effect waves-light">{{ __('save') }}</button>
                    {!!Form::close()!!}
                </div>
            </div>
        </div>
    </div>
@endsection
