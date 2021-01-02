@extends('layouts.admin')
@section('title') {{ __('students') }} @endsection

@section('content')


@php
$links = [
['name' => __('home'), 'url' => url('/')],
['name' => __('students'), 'url' => url('/students')],
['name' => __('edit student file'), 'active' => true],
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
                    {!! Form::model($student, ['method'=>'put', 'class' => 'form', 'route'=>['students.update',$student->id],'files'=>'true'])!!}
                    @include('student::students.form')
                    <button type="submit" class="btn btn-primary waves-effect waves-light">{{ __('save') }}</button>
                    {!!Form::close()!!}
                </div>
            </div>
        </div>
    </div>
@endsection
