@extends('layouts.admin')
@section('title') {{ __('roles') }} @endsection
@section('content')
@php
$links = [
['name' => __('home'), 'url' => url('/')],
['name' => __('roles'), 'url' => url('/roles')],
['name' => __('edit').' '.__('role'), 'active' => true],
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
                    {!! Form::model($role, ['method'=>'put','route'=>['roles.update',$role->id],'files'=>'true'])!!}
                    @include('main_settings.roles.form')
                    {{-- style="@if($role->name == 'super_admin') display: inline-block; display: none;@endif " --}}
                    <button type="submit" class="btn btn-primary waves-effect waves-light" > {{ __('save') }} </button>
                    {!!Form::close()!!}
                </div>
            </div>
        </div>
    </div>
@endsection
