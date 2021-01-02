@extends('layouts.admin')
@section('title') {{ __('students') }} @endsection
@section('content')

@php
$links = [
['name' => __('home'), 'url' => url('/')],
['name' => __('students'), 'url' => url('/students')], 
['name' => $resource->name , 'active' => true], 
];
@endphp

@include('layouts.breadcrumb', ['links' => $links])

<div class="content-body">
    <!-- account setting page start -->
    <section id="page-account-settings">
        <div class="row">
            <!-- left menu section -->
            <div class="col-md-3 mb-2 mb-md-0">

                <ul class="nav nav-pills flex-column mt-md-0 mt-1 shadow w3-round w3-white w3-padding">
                    <li class="nav-item">
                        <a class=" d-flex py-75 w3-center text-center" id="account-pill-general" data-toggle="pill" href="#" aria-expanded="true">
                            @if ($resource->personal_photo && file_exists(public_path($resource->personal_photo)))
                            <img class="media-object w3-round {{ randColor() }}" style="width: 100px; height: 100px" src="{{url($resource->personal_photo)}}" alt="">
                            @else
                            <img class="media-object w3-round" style="width: 100px; height: 100px" src="{{url('/app-assets/images/avatar/avatar.png')}}" alt="">
                            @endif 
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link d-flex py-75 active" id="account-pill-general" data-toggle="pill" href="#student_info" aria-expanded="true">
                            <i class="fa fa-user-circle-o mr-50 font-medium-3"></i>
                            {{ __('student information') }}
                        </a>
                    </li>
                   @if($resource->gender == 1)
                    <li class="nav-item">
                        <a class="nav-link d-flex py-75" id="account-pill-password" data-toggle="pill" href="#military_info" aria-expanded="false">
                            <i class="fa fa-bank icon-lock mr-50 font-medium-3"></i>
                            {{ __('military information') }}
                        </a>
                    </li>
                    @endif
                    <li class="nav-item">
                        <a class="nav-link d-flex py-75" id="account-pill-info" data-toggle="pill" href="#account-vertical-info" aria-expanded="false">
                            <i class="fa fa-circle-o icon-info mr-50 font-medium-3"></i>
                            {{ __('other information') }}
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link d-flex py-75" id="account-pill-social" data-toggle="pill" href="#parent_info" aria-expanded="false">
                            <i class="fa fa-user-secret icon-camera mr-50 font-medium-3"></i>
                            {{ __('parent information') }}
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link d-flex py-75" id="account-pill-connections" data-toggle="pill" href="#required_document" aria-expanded="false">
                            <i class="fa fa-newspaper-o icon-feather mr-50 font-medium-3"></i>
                            {{ __('required documents') }}
                        </a>
                    </li> 
                </ul>
            </div>
            <!-- right content section -->
            <div class="col-md-9">
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <div class="tab-content">
                                
                                <div role="tabpanel" class="tab-pane active" id="student_info" aria-labelledby="account-pill-general" aria-expanded="true">
                                    <div>
                                        {{ __('student information') }}
                                    </div>
                                    <hr>
                                    <table class="table" >
                                        <tr>
                                            <th>{{ __('student name') }}</th>
                                            <td>{{ $resource->name }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('submission method') }}</th>
                                            <td>{{ optional($resource->registerationStatus)->name }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('qualification') }}</th>
                                            <td>{{ optional($resource->qualification)->name }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('academic year') }}</th>
                                            <td>{{ optional($resource->academicYear)->name }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('qualification type') }}</th>
                                            <td>{{ optional($resource->QualificationTypes)->name }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('student grade') }}</th>
                                            <td>{{ $resource->grade }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('level name') }}</th>
                                            <td>{{ optional($resource->level)->name }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('qualification date') }}</th>
                                            <td>{{ $resource->qualification_date }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('registration date') }}</th>
                                            <td>{{ $resource->registeration_date }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('setting number') }}</th>
                                            <td>{{ $resource->qualification_set_number }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('tanseeq password') }}</th>
                                            <td>{{ $resource->password }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('student address') }}</th>
                                            <td>{{ $resource->address }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('submission type') }}</th>
                                            <td>{{ $resource->registration_method_id }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('birth place') }}</th>
                                            <td>{{ $resource->birth_address }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('national id') }}</th>
                                            <td>{{ $resource->national_id }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('national id date') }}</th>
                                            <td>{{ $resource->national_id_date }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('national id place') }}</th>
                                            <td>{{ optional($resource->nationalIdPlace)->name }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('acceptance_code') }}</th>
                                            <td>{{ $resource->acceptance_code }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('acceptance_date') }}</th>
                                            <td>{{ $resource->acceptance_date }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('sex') }}</th>
                                            <td>@if($resource->gender == 1) {{ __('male') }} @else {{ __('female') }} @endif</td>
                                        </tr> 
                                        <tr>
                                            <th>{{ __('case constraint') }}</th>
                                            <td>{{ optional($resource->case_constraint)->name }}</td>
                                        </tr> 
                                        <tr>
                                            <th>{{ __('constraint status') }}</th>
                                            <td>{{ optional($resource->constraint_status)->name }}</td>
                                        </tr> 
                                    </table>
                                </div>
                                
                                <div class="tab-pane fade " id="military_info" role="tabpanel" aria-labelledby="account-pill-password" aria-expanded="false">
                                    <div>
                                        {{ __('military information') }}
                                    </div>
                                    <hr>
                                    <table class="table" >
                                        <tr>
                                            <th>{{ __('triple number') }}</th>
                                            <td>{{ $resource->triple_number }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('military area') }}</th>
                                            <td>{{ optional($resource->militaryArea)->name }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('military status') }}</th>
                                            <td>{{ optional($resource->militaryStatus)->name }}</td>
                                        </tr> 
                                        
                                    </table>
                                </div>
                                <div class="tab-pane fade" id="other_info" role="tabpanel" aria-labelledby="account-pill-info" aria-expanded="false">
                                    <div>
                                        {{ __('other information') }}
                                    </div>
                                    <hr>
                                    <table class="table" >
                                        <tr>
                                            <th>{{ __('nationality') }}</th>
                                            <td>{{ optional($resource->nationality)->name }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('religion') }}</th>
                                            <td>{{ __($resource->religion) }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('country') }}</th>
                                            <td>{{ optional($resource->country)->name }}</td>
                                        </tr> 
                                        <tr>
                                            <th>{{ __('government') }}</th>
                                            <td>{{ optional($resource->government)->name }}</td>
                                        </tr> 
                                        <tr>
                                            <th>{{ __('city') }}</th>
                                            <td>{{ optional($resource->government)->name }}</td>
                                        </tr> 
                                        <tr>
                                            <th>{{ __('first foreign language') }}</th>
                                            <td>{{ optional($resource->language1)->name }}</td>
                                        </tr> 
                                        <tr>
                                            <th>{{ __('second foreign language') }}</th>
                                            <td>{{ optional($resource->language2)->name }}</td>
                                        </tr> 
                                        <tr>
                                            <th>{{ __('student phone') }}</th>
                                            <td>{{ $resource->phone_1 }}</td>
                                        </tr> 
                                        <tr>
                                            <th>{{ __('notes') }}</th>
                                            <td>{{ $resource->notes }}</td>
                                        </tr>   
                                        
                                    </table>
                                </div>
                                <div class="tab-pane fade " id="parent_info" role="tabpanel" aria-labelledby="account-pill-social" aria-expanded="false">
                                    <div>
                                        {{ __('parent information') }}
                                    </div>
                                    <hr>
                                    <table class="table" >
                                        <tr>
                                            <th>{{ __('parent name') }}</th>
                                            <td>{{ $resource->parent_name }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('parent national id') }}</th>
                                            <td>{{ $resource->parent_national_id }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('parent job') }}</th>
                                            <td>{{ optional($resource->parentJob)->name }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('parent_address') }}</th>
                                            <td>{{ $resource->parent_address }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('parent_phone') }}</th>
                                            <td>{{ $resource->parent_phone }}</td>
                                        </tr> 
                                        
                                    </table>
                                </div>
                                <div class="tab-pane fade" id="required_document" role="tabpanel" aria-labelledby="account-pill-connections" aria-expanded="false">
                                    <div>
                                        {{ __('required documents') }}
                                    </div>
                                    <hr>
                                    <table class="table" >

                                        @foreach($resource->studentRequiredDocument()->get() as $item)
                                        <tr>
                                            <th>{{ optional($item->requiredDocument)->name }}</th>
                                            <td>
                                                <img src="{{ url('/') }}{{ $item->path }}" onclick="viewImage(this)" width="30px" >
                                            </td>
                                        </tr>  
                                        @endforeach
                                        
                                    </table>
                                </div> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- account setting page end -->

</div>
@endsection

@section('more_scripts') 
<script src="{{ url('/') }}/app-assets/js/scripts/pages/account-setting.js"></script>
@endsection