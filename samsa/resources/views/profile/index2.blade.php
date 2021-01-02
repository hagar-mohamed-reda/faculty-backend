@extends('layouts.admin')
@section('title') اعدادات الحساب الشخصى @endsection
@section('content')
<section id="page-account-settings">
    <div class="row">
        <!-- left menu section -->
        <div class="col-md-3 mb-2 mb-md-0">
            <div class="shadow card" >
                <div class="card-content" >
                    <div class="card-body" >
                        <div class="w3-center" >
                            <img class="rounded mr-75" width="60%" id="blah" src="{{ url('public/' . Auth::user()->image) }}" alt="your image" />
                            <br>
                            <b>({{ Auth::user()->name }})</b>
                        </div> 
                        <br>
                        <ul class="nav nav-pills flex-column mt-md-0 mt-1">
                            <li class="nav-item">
                                <a class="nav-link d-flex py-75 active" id="account-pill-general" data-toggle="pill" href="#account-vertical-general" aria-expanded="true">
                                    <i class="fa fa-cogs mr-50 font-medium-3"></i>
                                    {{ __('global setting') }}
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link d-flex py-75" id="account-pill-password" data-toggle="pill" href="#account-vertical-password" aria-expanded="false">
                                    <i class="fa fa-lock mr-50 font-medium-3"></i>
                                    {{ __('change password') }}
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link d-flex py-75" id="account-pill-info" data-toggle="pill" href="#account-vertical-info" aria-expanded="false">
                                    <i class="fa fa-calendar mr-50 font-medium-3"></i>
                                    {{ __('activities') }} 
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link d-flex py-75" id="account-pill-social" data-toggle="pill" href="#account-vertical-social" aria-expanded="false">
                                    <i class="fa fa-address-book mr-50 font-medium-3"></i>
                                    {{ __('login history') }} 
                                </a>
                            </li> 
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- right content section -->
        <div class="col-md-9">
            <div class="card">
                <div class="card-content">
                    <div class="card-body">
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="account-vertical-general" aria-labelledby="account-pill-general" aria-expanded="true">
                                

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
                                                    <label for="account-name">اسم المستخدم</label>
                                                    <input name="name" type="text" class="form-control" id="account-name" placeholder="Name" value="{!! Auth::user()->name !!}" required data-validation-required-message="This name field is required">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <div class="controls">
                                                    <label for="account-e-mail">البريد الالكترونى</label>
                                                    <input name="email" type="email" class="form-control" id="account-e-mail" placeholder="Email" value="{!! Auth::user()->email !!}" required data-validation-required-message="This email field is required">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <div class="controls">
                                                    <label for="account-e-mail">رقم الهاتف</label>
                                                    <input name="phone" type="text" class="form-control" id="account-e-mail" placeholder="رقم الهاتف" value="{!! Auth::user()->phone !!}" required data-validation-required-message="This email field is required">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12 d-flex flex-sm-row flex-column justify-content-end">
                                            <button type="submit" class="btn btn-primary mr-sm-1 mb-1 mb-sm-0">حفظ التغييرات</button>
                                        </div>
                                    </div>

                                    {!!Form::close()!!}
                            </div>
                            <div class="tab-pane fade " id="account-vertical-password" role="tabpanel" aria-labelledby="account-pill-password" aria-expanded="false">
                                {!! Form::model(Auth::user(), ['method'=>'put','route'=>['update-password',Auth::user()->id] ])!!}
                                <div class="row">
                                    <div class="col-12">
                                        <div class="form-group">
                                            <div class="controls">
                                                <label for="account-old-password">كلمة المرور القديمة</label>
                                                <input name="old_password" type="password" class="form-control" id="account-old-password" required placeholder="كلمة المرور القديمة" data-validation-required-message="This old password field is required">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <div class="controls">
                                                <label for="account-new-password">كلمة المرور الجديدة</label>
                                                <input name="password" type="password" name="password" id="account-new-password" class="form-control" placeholder="كلمة المرور الجديدة" required data-validation-required-message="The password field is required" minlength="6">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <div class="controls">
                                                <label for="account-retype-new-password">تأكيد كلمة المرور</label>
                                                <input name="new_password" type="password" name="con-password" class="form-control" required id="account-retype-new-password" data-validation-match-match="password" placeholder="تأكيد كلمة المرور" data-validation-required-message="The Confirm password field is required" minlength="6">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 d-flex flex-sm-row flex-column justify-content-end">
                                        <button type="submit" class="btn btn-primary mr-sm-1 mb-1 mb-sm-0"> حفظ التغييرات </button>
                                    </div>
                                </div>
                                {!!Form::close()!!}
                            </div>
                            
                            <div class="tab-pane fade" id="account-vertical-info" role="tabpanel" aria-labelledby="account-pill-info" aria-expanded="false">
                                 
                            </div>
                            
                            <div class="tab-pane fade " id="account-vertical-social" role="tabpanel" aria-labelledby="account-pill-social" aria-expanded="false">
                                 
                            </div>
                            
                          
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection

@section('more_scripts')
<script language="javascript">


    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]); // convert to base64 string
        }
    }

    $("#account-upload").change(function () {
        readURL(this);
    });
</script>

@show
