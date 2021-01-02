@extends('layouts.admin')


@section('custom-style')
<link rel="stylesheet" type="text/css" href="{{ url('/') }}/app-assets/css-rtl/pages/users.css">
<link rel="stylesheet" type="text/css" href="{{ url('/') }}/app-assets/css/timeline.css">

<style>
    .tab {
        display: none;
    }
    
    .activities {
        display: block;
    }
</style>
@endsection

@section('title') 
{{ __('profile') }}
@endsection
@section('content')

<div class="content-wrapper">

    <div class="content-body">
        <div id="user-profile">
            <div class="row">
                <div class="col-12">
                    <div class="profile-header mb-2  shadow">
                        <div class="relative">
                            <div class="cover-container">
                                <img class="img-fluid bg-cover rounded-0 w-100" src="{{ url('app-assets/images/banner/parallax-4.jpg') }}" alt="User Profile Image">
                            </div>
                            <div class="profile-img-container d-flex align-items-center justify-content-between">
                                <img width="50px"  src="{{ url('public/' . Auth::user()->image) }}" class="w3-white rounded-circle img-border shadow" alt="Card image">
                                <!--
                                <div class="float-right">
                                    <button type="button" class="btn btn-icon btn-icon rounded-circle btn-primary mr-1">
                                        <i class="feather icon-edit-2"></i>
                                    </button>
                                    <button type="button" class="btn btn-icon btn-icon rounded-circle btn-primary">
                                        <i class="feather icon-settings"></i>
                                    </button>
                                </div>
                                -->
                            </div>
                        </div>
                        <div class="d-flex justify-content-end align-items-center profile-header-nav">
                            <nav class="navbar navbar-expand-sm w-100 pr-0">
                                <button class="navbar-toggler pr-0" type="button" data-toggle="collapse" data-target="navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"><i class="feather icon-align-justify"></i></span>
                                </button>
                                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                    <ul class="navbar-nav justify-content-around w-75 ml-sm-auto">
                                        <li class="nav-item px-sm-0">
                                            <a  class="nav-link font-small-3" onclick="$('.tab').slideUp(400);$('.activities').slideDown(400)" >{{ __('activities') }}</a>
                                        </li>
                                        <li class="nav-item px-sm-0">
                                            <a  class="nav-link font-small-3" onclick="$('.tab').slideUp(400);$('.login_history').slideDown(400)" >{{ __('login history') }}</a>
                                        </li>
                                        <li class="nav-item px-sm-0">
                                            <a class="nav-link font-small-3" onclick="$('.tab').slideUp(400);$('.setting').slideDown(400)" >{{ __('setting') }}</a>
                                        </li>
                                        <li class="nav-item px-sm-0">
                                            <a class="nav-link font-small-3" onclick="$('.tab').slideUp(400);$('.change_password').slideDown(400)" >{{ __('change password') }}</a>
                                        </li> 
                                    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <section id="profile-info">
                <div class="row">
                    <div class="col-lg-3 col-12">
                        
                        <div class="card">
                            <div class="card-header">
                                <h4>About</h4>
                                <i class="feather icon-more-horizontal cursor-pointer"></i>
                            </div>
                            <div class="card-body"> 
                                <div class="mt-1">
                                    <h6 class="mb-0"><b>{{ __('name') }}</b></h6>
                                    <p>{{ Auth::user()->name }}</p>
                                </div>
                                <div class="mt-1">
                                    <h6 class="mb-0"><b>{{ __('username') }}</b></h6>
                                    <p>{{ Auth::user()->username }}</p>
                                </div>
                                <div class="mt-1">
                                    <h6 class="mb-0"><b>{{ __('email') }}</b></h6>
                                    <p>
                                        <a href="mailto:{{ Auth::user()->email }}" >{{ Auth::user()->email }}</a>
                                    </p>
                                </div>
                                <div class="mt-1">
                                    <h6 class="mb-0"><b>{{ __('phone') }}</b></h6>
                                    <p>
                                        <a href="tel:{{ Auth::user()->email }}" >{{ Auth::user()->phone }}</a>
                                    </p>
                                </div>

                            </div>
                        </div>


                    </div>

                    <div class="col-lg-9 col-12">
                        
                        <div class="card tab activities">
                            <div class="card-body"   > 
                                <ul class="timeline timeline-inverse"   > 
                                    <!-- The timeline --> 
                                    <!-- timeline time label -->
                                    @php
                                    $currentDate = '';
                                    @endphp
                                    @foreach(Auth::user()->notifications()->orderBy('created_at', 'DESC')->get() as $item)

                                    @if (date('Y-m-d', strtotime($item->created_at)) != $currentDate)
                                    <li class="time-label" style="text-align: left" >
                                        <span class="bg-red {{ randColor() }}">
                                            {{ date('Y-m-d', strtotime($item->created_at)) }}
                                        </span>
                                    </li>
                                    @endif
                                    <!-- timeline item -->
                                    <li>
                                        <i class="{{ $item->icon }} {{ randColor() }}"></i>

                                        <div class="timeline-item">
                                            <span class="time"><i class="fa fa-clock-o"></i> {{ date('H:i', strtotime($item->created_at)) }}</span>

                                            <h3 class="timeline-header"><a href="#">{{ $item->title }}</a></h3>

                                            <div class="timeline-body">
                                                {{ $item->body }}
                                            </div> 
                                        </div>
                                    </li>


                                    <?php
                                    $currentDate = date('Y-m-d', strtotime($item->created_at));
                                    ?>  
                                    @endforeach

                                </ul> 
                            </div>
                        </div> 
                        
                        <div class="card tab login_history">
                            <div class="card-body"   > 
                                <table class="table table-border" id="table" >
                                    <thead>
                                        <tr>
                                            <th>{{ __('datetime') }}</th>
                                            <th>{{ __('ip') }}</th>
                                            <th>{{ __('device info') }}</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach(Auth::user()->loginHistory()->orderBy("id", 'ASC')->get() as $item)
                                        <tr>
                                            <td>{{ $item->created_at }}</td>
                                            <td>{{ $item->ip }}</td>
                                            <td>{!! $item->phone_details !!}</td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div> 
                        
                        <div class="card tab setting">
                            <div class="card-body"   > 
                                 

                                {{-- <form  action="{{ route('profile.store') }}"  method="POST" > --}}
                                    {!! Form::model(Auth::user(), ['method'=>'put','route'=>['profile.update',Auth::user()->id],'files'=>'true'])!!}

                                    <div class="row">
                                        <div class="col-12">
                                            <div class="form-group">
                                                <div class="controls">
                                                    <img class="rounded mr-75" width="136px" id="blah" src="{{ url('public/' . Auth::user()->image) }}" alt="your image" />
                                                    <input name="image" type='file' id="account-upload" hidden/>
                                                    <label class="btn btn-sm btn-primary ml-50 mb-50 mb-sm-0 cursor-pointer" for="account-upload">تغيير الصورة الشخصية</label>
                                                </div>
                                            </div>
                                            <hr>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <div class="controls">
                                                    <label for="account-name">{{ __('name') }}</label>
                                                    <input name="name" type="text" class="form-control" id="account-name" placeholder="Name" value="{!! Auth::user()->name !!}" required data-validation-required-message="This name field is required">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <div class="controls">
                                                    <label for="account-e-mail">{{ __('email') }}</label>
                                                    <input name="email" type="email" class="form-control" id="account-e-mail" placeholder="Email" value="{!! Auth::user()->email !!}" required data-validation-required-message="This email field is required">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <div class="controls">
                                                    <label for="account-e-mail">{{ __('phone') }}</label>
                                                    <input name="phone" type="text" class="form-control" id="account-e-mail" placeholder="رقم الهاتف" value="{!! Auth::user()->phone !!}" required data-validation-required-message="This email field is required">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12 d-flex flex-sm-row flex-column justify-content-end">
                                            <button type="submit" class="btn btn-primary mr-sm-1 mb-1 mb-sm-0">{{ __('save changes') }}</button>
                                        </div>
                                    </div>

                                    {!!Form::close()!!}
                            </div>
                        </div> 
                        
                        <div class="card tab change_password">
                            <div class="card-body"   > 
                                 {!! Form::model(Auth::user(), ['method'=>'put','route'=>['update-password',Auth::user()->id] ])!!}
                                <div class="row">
                                    <div class="col-12">
                                        <div class="form-group">
                                            <div class="controls">
                                                <label for="account-old-password">{{ __('old password') }}</label>
                                                <input name="old_password" type="password" class="form-control" id="account-old-password" required placeholder="كلمة المرور القديمة" data-validation-required-message="This old password field is required">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <div class="controls">
                                                <label for="account-new-password">{{ __('new password') }}</label>
                                                <input name="password" type="password" name="password" id="account-new-password" class="form-control" placeholder="كلمة المرور الجديدة" required data-validation-required-message="The password field is required" minlength="6">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <div class="controls">
                                                <label for="account-retype-new-password">{{ __('confirm new password') }}</label>
                                                <input name="new_password" type="password" name="con-password" class="form-control" required id="account-retype-new-password" data-validation-match-match="password" placeholder="تأكيد كلمة المرور" data-validation-required-message="The Confirm password field is required" minlength="6">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 d-flex flex-sm-row flex-column justify-content-end">
                                        <button type="submit" class="btn btn-primary mr-sm-1 mb-1 mb-sm-0">{{ __('save changes') }}</button>
                                    </div>
                                </div>
                                {!!Form::close()!!}
                            </div>
                        </div>
                        
                    </div> 
                </div>
                 
            </section>
        </div>

    </div>
</div>

@endsection