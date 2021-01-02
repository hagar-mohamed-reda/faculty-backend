@extends('layouts.admin')
@section('title') {{ __('military areas') }} @endsection

@section('content')
     <div class="card">
        <div class="card-header">
            <a class="btn btn-relief-primary mr-1 mb-1 waves-effect waves-light" href="{{route('military-areas.create')}}"><i class="ik ik-plus-circle"></i> {{ __('create') }} </a>
        </div>
        <div class="card-content">
            @include('includes.alerts.success')
            @include('includes.alerts.errors')
            <div class="table-responsive">
                @include('military::military_areas.table')
            </div>
        </div>
    </div>
@endsection
