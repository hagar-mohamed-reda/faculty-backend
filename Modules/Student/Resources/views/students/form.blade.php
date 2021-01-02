<style>
    table label {
        font-size: 20px;
    }
</style>
<div id="app" > 
<div class="w3-display-container" style="width: 160px" >
    <div class="w3-padding w3-center bg-primary w3-text-white w3-tiny" >{{__('personal photo')}}</div>
    <img  class="w3- w3-block imageView" 
         @if (isset($student))
            @if($student->personal_photo)
                src="{{ url('/') }}{{ $student->personal_photo }}"
            @endif
            @else src="{{ url('/app-assets/images/avatar/avatar.png') }}"
        @endif >
    <input type="file" class="custom-file-input hidden personal_photo" id="personal-photo" name="personal_photo" onchange="loadImage(this, event)" >
    <div class="w3-padding w3-center bg-primary w3-text-white w3-button w3-block" onclick="$('.personal_photo').click()" >
        <i class="fa fa-edit" ></i>
    </div>
</div>
<br>
 
<div class="row" >
    <div 
        class="w3-display-container w3-button w3-round w3-block text-left shadow w3-light-gray" 
        onclick="$('.student_info').slideToggle(500)"
        style="padding: 5px" >
        <i class="fa fa-angle-double-left" style="margin: 5px" ></i>
        <span class="w3-large" >{{ __('student information') }}</span>
        
        <span class="w3-left fa fa-angle-up" ></span>
    </div>
</div>
<br> 
<div class="row student_info" >
    <table class="table" >
        <tr>
            <td><label for="name"> {{ __('student name') }} *</label></td>
            <td>
            {!! Form::text('name',null,['class'=>'form-control w3-round','id'=>'name','placeholder'=> __('student name'), 'required' => 'required' ])!!}
                @error('name')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
                <div class="help-block"></div>
            </td>
        </tr>
        <tr>
            <td><label for="name"> {{ __('email') }} *</label></td>
            <td>
            {!! Form::text('email',null,['class'=>'form-control w3-round','id'=>'email','placeholder'=> __('email')])!!}
                @error('email')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
                <div class="help-block"></div>
            </td>
        </tr>
        
        <tr>
            <td><label class="label-r" for="title"> {{ __('case constraint') }} *</label></td>
            <td> 
                {!! Form::select('case_constraint_id',\Modules\Settings\Entities\CaseConstraint::pluck('name','id'),null,['class'=>'custom-select','id'=>'customSelect', 'placeholder' =>  __('case constraint'), 'required' ])!!}
                @error('case_constraint_id')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
            </td>
        </tr>
         <tr>
            <td><label class="label-r" for="title"> {{ __('constraint status') }} *</label></td>
            <td> 
                {!! Form::select('constraint_status_id',\Modules\Settings\Entities\ConstraintStatus::pluck('name','id'),null,['class'=>'custom-select','id'=>'customSelect', 'placeholder' =>  __('constraint status'), 'required' ])!!}
                @error('constraint_status_id')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
            </td>
        </tr>
        
        <tr>
            <td><label class="label-r" for="title"> {{ __('submission method') }} *</label></td>
            <td> 
                {!! Form::select('registration_status_id',\Modules\Settings\Entities\RegisterationStatus::pluck('name','id'),null,['class'=>'custom-select','id'=>'customSelect', 'placeholder' =>  __('submission method'), 'required' ])!!}
                @error('registration_status_id')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
            </td>
        </tr>
        <tr>
            <td><label class="label-r" for="qualification_id">{{ __('qualification') }} *</label></td>
            <td> 
                {!! Form::select('qualification_id',Modules\Settings\Entities\Qualification::pluck('name','id'),null,['class'=>'custom-select','id'=>'customSelect','placeholder' =>  __('select qualification'), 'v-model="application.qualification_id"', 'required' => 'required'   ])!!}
                @error('qualification_id')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
            </td>
        </tr>
        <tr>
            <td><label class="label-r" for="academic_years_id">{{ __('academic year') }} *</label></td>
            <td> 
                {!! Form::select('academic_years_id',Modules\Settings\Entities\AcademicYear::pluck('name','id'),null,['class'=>'custom-select','id'=>'customSelect','placeholder' => __('select academic year'), 'v-model="application.academic_years_id"', 'required' => 'required'  ])!!}
                @error('academic_years_id')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
            </td>
        </tr>
        <tr>
            <td><label class="label-r" for="qualification_types_id">{{ __('qualification type') }} *</label></td>
            <td>   
                        <select name="qualification_types_id" class="form-control w3-round qualification_types_id qualification_types_id" 
                        required="required"
                        v-model="application.qualification_types_id" 
                        onchange="selectLevel(this)"
                        onclick="selectLevel(this)" >
                            @foreach(Modules\Settings\Entities\QualificationTypes::get() as $item)
                            <option value="{{ $item->id }}" 
                            v-if="application.qualification_id=='{{ $item->qualification_id }}' && application.academic_years_id=='{{ $item->academic_year_id }}' " 
                            data-level="{{ $item->level_id }}"
                            data-grade="{{ $item->grade }}"
                            data-level-name="{{ optional($item->level)->name }}" >{{ $item->name }}</option>
                            @endforeach
                        </select>
                        @error('qualification_types_id')
                        <span class="text-danger"> {!! $message !!}</span>
                        @enderror 
            </td>
        </tr>
        <tr>
            <td><label for="grade">{{ __('student grade') }} *</label> </td>
            <td>  
                {!! Form::input('count','grade',null,['class'=>'form-control w3-round grade_number','id'=>'notes','placeholder'=>__('student grade'), 'v-model="application.grade"', 'required' => 'required'  ])!!}
                @error('grade')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
                <div class="help-block"></div> 
            </td>
        </tr>
        <tr>
            <td><label class="label-r" for="level_id">{{ __('level name') }}</label></td>
            <td>  
                <input type="hidden" name="level_id" v-model="application.level_id" >
                <input type="text" name="level_name" v-model="application.level_name" class="form-control w3-round" readonly="" >
                
                @error('division_id')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror 
            </td>
        </tr>
        <tr>
            <td><label for="qualification_date"> {{ __('qualification date') }} *</label></td>
            <td>   
                        {!! Form::date('qualification_date',null,['class'=>'form-control w3-round','id'=>'grade','placeholder'=> __('qualification date'), 'required' => 'required'  ])!!}
                        @error('qualification_date')
                        <span class="text-danger"> {!! $message !!}</span>
                        @enderror
                        <div class="help-block"></div> 
            </td>
        </tr>
        <tr>
            <td><label for="registeration_date">{{ __('registration date') }}</label></td>
            <td> 
                {!! Form::date('registeration_date',null,['class'=>'form-control w3-round','id'=>'grade','placeholder'=> __('registration date') ])!!}
                @error('registeration_date')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
                <div class="help-block"></div>
            </td>
        </tr>
        <tr>
            <td><label class="label-r" for="qualification_set_number"> {{ __('setting number') }}</label></td>
            <td> 
                {!! Form::number('qualification_set_number',null,['class'=>'custom-select','id'=>'qualification_set_number' , 'placeholder'=> __('setting number')])!!}
                @error('qualification_set_number')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
            </td>
        </tr>
        <tr>
            <td><label for="password">{{ __('tanseeq password') }} *</label></td>
            <td> 
            {!! Form::text('password',null,['class'=>'form-control w3-round','id'=>'name','placeholder'=>  __('tanseeq password'), 'required' => 'required'  ])!!}
                @error('password')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
                <div class="help-block"></div>
            </td>
        </tr>
        <tr>
            <td><label for="address">{{ __('student address') }}</label></td>
            <td> 
           {!! Form::text('address',null,['class'=>'form-control w3-round','id'=>'grade','placeholder'=> __('student address') ])!!}
                @error('address')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
                <div class="help-block"></div>
            </td>
        </tr>
        <tr>
            <td><label class="label-r" for="title"> {{ __('submission type') }} </label></td>
            <td> 
                {!! Form::select('registration_method_id',\Modules\Settings\Entities\RegistrationMethod::pluck('name','id'),null,['class'=>'custom-select','id'=>'customSelect', 'placeholder' => __('submission type') ])!!}
                @error('registration_method_id')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
            </td>
        </tr>
        <tr>
            <td><label for="birth_address"> {{ __('birth place') }}</label></td>
            <td> 
            {!! Form::text('birth_address',null,['class'=>'form-control w3-round','id'=>'grade','placeholder'=>__('birth place') ])!!}
                @error('birth_address')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
            </td>
        </tr>
        <tr>
            <td><label for="national_id">{{ __('national id') }} *</label></td>
            <td> 
            {!! Form::number('national_id',null,['class'=>'form-control w3-round','id'=>'national_id','placeholder'=> __('national id'), 'required' => 'required'  ])!!}
                @error('national_id')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
            </td>
        </tr>
        <tr>
            <td><label for="national_id_date"> {{ __('national id date') }}</label></td>
            <td> 
               {!! Form::date('national_id_date',null,['class'=>'form-control w3-round','id'=>'national_id_date','placeholder'=> __('national id date') ])!!}
                @error('national_id_date')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
                <div class="help-block"></div>
            </td>
        </tr>
        <tr>
            <td><label class="label-r" for="national_id_place">{{ __('national id place') }}</label></td>
            <td> 
                {!! Form::select('national_id_place',App\Government::pluck('name','id'),null,['class'=>'custom-select','id'=>'customSelect','placeholder' => __('national id place') ])!!}
                @error('national_id_place')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
            </td>
        </tr>
        <tr>
            <td><label for="acceptance_code"> {{ __('acceptance_code') }}</label></td>
            <td>
            {!! Form::text('acceptance_code',null,['class'=>'form-control w3-round','id'=>'name','placeholder'=> __('acceptance_code')])!!}
                @error('acceptance_code')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
                <div class="help-block"></div>
            </td>
        </tr>  
        <tr> 
            <td><label for="acceptance_date"> {{ __('acceptance_date') }}</label></td>
            <td>  
            {!! Form::date('acceptance_date',null,['class'=>'form-control w3-round','id'=>'name','placeholder'=> __('acceptance_date') ])!!}
                @error('acceptance_date')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
                <div class="help-block"></div>
            </td> 
        </tr>
        <tr>
            <td><label for="religion">{{ __('sex') }}</label></td>
            <td> 
                <ul class="list-unstyled mb-0">
                    
                    <li class="d-inline-block mr-2">
                        <fieldset>
                            <div class="vs-radio-con"  onchange="showDiv()">
                                <input type="radio" name="gender" @if(isset($student) && $student->gender == 1)checked="" @endif value="1">
                                <span class="vs-radio">
                                    <span class="vs-radio--border"></span>
                                    <span class="vs-radio--circle"></span>
                                </span>
                                <span class="">{{ __('male') }}</span>
                            </div>
                        </fieldset>
                    </li>
                    <li class="d-inline-block mr-2">
                        <fieldset>
                            <div class="vs-radio-con"  onchange="hidDiv()" >
                                <input type="radio" name="gender" @if(isset($student) && $student->gender == 0 )checked="" @endif value="0">
                                <span class="vs-radio">
                                    <span class="vs-radio--border"></span>
                                    <span class="vs-radio--circle"></span>
                                </span>
                                <span class="">{{ __('female') }}</span>
                            </div>
                        </fieldset>
                    </li>
                </ul>
                @error('gender')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
            </td>
        </tr>
    </table>
</div>

<div id="military" style="display: @if(isset($application) && $application->gender == 0 ) none @endif " >
<div class="row" >
    <div 
        class="w3-display-container w3-button w3-round w3-block text-left shadow w3-light-gray" 
        onclick="$('.military_infomation').slideToggle(500)"
        style="padding: 5px" >
        <i class="fa fa-angle-double-left" style="margin: 5px" ></i>
        <span class="w3-large" >{{ __('military information') }}</span>
        
        <span class="w3-left fa fa-angle-up" ></span>
    </div>
</div>
<br> 
<div class="row military_infomation" >
    <table class="table" >
        <tr>
            <td><label for="triple_number">{{ __('triple number') }}</label></td>
            <td> 
                {!! Form::number('triple_number',null,['class'=>'form-control w3-round','id'=>'triple_number','placeholder'=> __('triple number') ])!!}
                @error('triple_number')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
                <div class="help-block"></div>
            </td>
        </tr>
        <tr>
            <td><label class="label-r" for="military_area_id"> {{ __('military area') }}</label></td>
            <td> 
                {!! Form::select('military_area_id',Modules\Military\Entities\MilitaryAreas::pluck('name','id'),null,['class'=>'custom-select','id'=>'customSelect','placeholder' => __('select military area')])!!}
                @error('military_area_id')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
            </td>
        </tr>
        <tr>
            <td><label class="label-r" for="military_status_id">{{ __('military status') }}</label></td>
            <td> 
                {!! Form::select('military_status_id',Modules\Military\Entities\MilitaryStatus::pluck('name','id'),null,['class'=>'custom-select','id'=>'customSelect','placeholder' => __('select military status')])!!}
                @error('military_status_id')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
            </td>
        </tr> 
    </table>
</div>
 
</div>
<div class="row" >
    <div class="w3-display-container w3-button w3-round w3-block text-left shadow w3-light-gray" 
        onclick="$('.other_info').slideToggle(500)"
         style="padding: 5px" >
        <i class="fa fa-angle-double-left" style="margin: 5px" ></i>
        <span class="w3-large" >{{ __('other information') }}</span>
        
        <span class="w3-left fa fa-angle-up" ></span>
    </div>
</div>
<br> 
<div class="row other_info" >
    <table class="table" >
        <tr>
            <td><label class="label-r" for="title"> {{ __('nationality') }}</label></td>
            <td> 
             {!! Form::select('nationality_id',App\Nationality::pluck('name','id'),null,['class'=>'custom-select','id'=>'customSelect','placeholder' => __('select nationality')])!!}
                @error('nationality_id')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
            </td>
        </tr>
        <tr>
            <td><label for="religion">{{ __('religion') }}</label></td>
            <td> 
            <ul class="list-unstyled mb-0">
                    
                    <li class="d-inline-block mr-2">
                        <fieldset>
                            <div class="vs-radio-con">
                                <input type="radio" name="religion" value="1">
                                <span class="vs-radio">
                                    <span class="vs-radio--border"></span>
                                    <span class="vs-radio--circle"></span>
                                </span>
                                <span class="">{{ __('muslim') }}</span>
                            </div>
                        </fieldset>
                    </li>
                    <li class="d-inline-block mr-2">
                        <fieldset>
                            <div class="vs-radio-con">
                                <input type="radio" name="religion" checked="" value="0">
                                <span class="vs-radio">
                                    <span class="vs-radio--border"></span>
                                    <span class="vs-radio--circle"></span>
                                </span>
                                <span class="">{{ __('christian') }}</span>
                            </div>
                        </fieldset>
                    </li>
                </ul>
                @error('religion')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
            </td>
        </tr>
        <tr>
            <td><label class="label-r" for="Country_id"> {{ __('country') }}</label></td>
            <td> 
                {!! Form::select('country_id',App\Country::pluck('name','id'),null,['class'=>'custom-select','id'=>'customSelect','placeholder' => __('select country'), 'v-model="application.country_id"' ])!!}
                @error('country_id')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
            </td>
        </tr>
        <tr>
            <td><label class="label-r" for="government_id">{{ __('government') }}</label></td>
            <td>
            <select name="government_id" class="form-control w3-round" v-model="application.government_id" >
                    @foreach(App\Government::get() as $item)
                    <option value="{{ $item->id }}" v-if="application.country_id=='{{ $item->country_id }}'" >{{ $item->name }}</option>
                    @endforeach
                </select>
                @error('government_id')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
            </td>
        </tr>
        <tr>
            <td><label class="label-r" for="city_id">{{ __('city') }}</label></td>
            <td> 
            <select name="city_id" class="form-control w3-round" v-model="application.city_id" >
                    @foreach(App\City::get() as $item)
                    <option value="{{ $item->id }}" v-if="application.government_id=='{{ $item->government_id }}'" >{{ $item->name }}</option>
                    @endforeach
                </select>
                @error('city_id')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
            </td>
        </tr>
        <tr>
            <td><label class="label-r" for="language_1_id">{{ __('first foreign language') }}</label></td>
            <td> 
            {!! Form::select('language_1_id',App\Language::pluck('name','id'),null,['class'=>'custom-select','id'=>'customSelect','placeholder' =>  __('select first foreign language') ])!!}
                @error('language_1_id')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
            </td>
        </tr>
        <tr>
            <td><label class="label-r" for="language_2_id">{{ __('second foreign language') }}</label></td>
            <td> 
            {!! Form::select('language_2_id',App\Language::pluck('name','id'),null,['class'=>'custom-select','id'=>'customSelect','placeholder' =>  __('select second foreign language') ])!!}
                @error('language_2_id')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
            </td>
        </tr>
        <tr>
            <td><label for="phone_1">{{ __('student phone') }}</label></td>
            <td> 
            {!! Form::text('phone_1',null,['class'=>'form-control w3-round','id'=>'name','placeholder'=>__('student phone') ])!!}
                @error('phone_1')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
                <div class="help-block"></div>
            </td>
        </tr>
        <tr>
            <td> <label for="end_date">{{ __('notes') }}</label></td>
            <td> 
                {!! Form::textarea('notes',null,['class'=>'form-control w3-round','id'=>'notes','placeholder'=> __('notes') ])!!}
                <div class="help-block"></div>
            </td>
        </tr>
    </table>
</div>


<div class="row" >
    <div class="w3-display-container w3-button w3-round w3-block text-left shadow w3-light-gray" 
        onclick="$('.parent_info').slideToggle(500)"
         style="padding: 5px" >
        <i class="fa fa-angle-double-left" style="margin: 5px" ></i>
        <span class="w3-large" >{{ __('parent information') }}</span>
        
        <span class="w3-left fa fa-angle-up" ></span>
    </div>
</div>
<br> 
<div class="row parent_info" >
    <table class="table" > 
        <tr>
            <td><label for="name">{{ __('parent name') }}</label></td>
            <td> 
                {!! Form::text('parent_name',null,['class'=>'form-control w3-round','id'=>'name','placeholder'=>__('parent name') ])!!}
                @error('parent_name')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
                <div class="help-block"></div>
            </td>
        </tr>
        <tr>
            <td><label for="parent_national_id"> {{ __('parent national id') }}</label></td>
            <td> 
                {!! Form::text('parent_national_id',null,['class'=>'form-control w3-round','id'=>'name','placeholder'=> __('parent national id') ])!!}
                @error('parent_national_id')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
                <div class="help-block"></div>
            </td>
        </tr>
        <tr>
            <td><label class="label-r" for="parent_job_id">{{ __('parent job') }}</label></td>
            <td>  
                {!! Form::select('parent_job_id',Modules\Settings\Entities\ParentJobs::pluck('name','id'),null,['class'=>'custom-select','id'=>'customSelect','placeholder' => __('select parent job')])!!}
                @error('parent_job_id')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
            </td>
        </tr>
        <tr>
            <td><label for="parent_address">{{ __('parent address') }}</label></td>
            <td> 
                {!! Form::text('parent_address',null,['class'=>'form-control w3-round','id'=>'name','placeholder'=> __('parent address') ])!!}
                @error('parent_address')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
                <div class="help-block"></div>
            </td>
        </tr>
        <tr>
            <td><label for="parent_phone">{{ __('parent phone') }}</label></td>
            <td> 
                {!! Form::text('parent_phone',null,['class'=>'form-control w3-round','id'=>'name','placeholder'=> __('parent phone') ])!!}
                @error('parent_phone')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
                <div class="help-block"></div>
            </td>
        </tr>
    </table>
</div>


<div class="row" >
    <div class="w3-display-container w3-button w3-round w3-block text-left shadow w3-light-gray" 
        onclick="$('.required_document_section').slideToggle(500)"
         style="padding: 5px" >
        <i class="fa fa-angle-double-left" style="margin: 5px" ></i>
        <span class="w3-large" >{{ __('required documents') }}</span>
        
        <span class="w3-left fa fa-angle-up" ></span>
    </div>
</div>
<br> 
<div class="row required_document_section" >
    <table class="table" >
        @foreach(Modules\Adminsion\Entities\RequiredDocument::all() as $item)
        <tr>
            <td><label for="estimates-statement">{{ $item->name }}</label></td>
            <td>    
                <div class="row" >
                    <div class="col-lg-8 col-md-8 col-sm-8 w3-block w3-button" onclick="$('.required-document-{{ $item->id }}').click()">
                        <span class="fa fa-image w3-large"></span>
                        <span> {{  __('upload file') }} </span>
                    </div>  
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <img 
                            class="imageView w3-round w3-bordered w3-border-gray" 
                            @if (isset($student))
                            @if (Modules\Adminsion\Entities\StudentRequiredDocument::where('application_id', $student->application_id)->where('required_document_id', $item->id)->first())
                            src="{{ optional(Modules\Adminsion\Entities\StudentRequiredDocument::where('application_id', $student->application_id)->where('required_document_id', $item->id)->first())->path }}"
                            @endif
                            @endif
                            onclick="viewImage(this)" style="cursor: pointer" width="50px" >
                    </div>
                    <input type="file" onchange="loadImage(this, event)" 
                           class="hidden required-document-{{ $item->id }}"   
                           name="required_document_{{$item->id}}" accept="image/x-png,image/gif,image/jpeg"> 
                </div>
            </td>
            <td>
                <input class="form-control" readonly="" value="{{ __($item->type) }}" >
            </td>
        </tr>
        @endforeach 
    </table>
</div>
  
</div>


@section('more_scripts')
<script src="{{ url('/app-assets/js/formajax.js') }}" ></script>
<script src="{{ url('/app-assets/js/sweetalert.min.js') }}" ></script>
<script language="javascript">
    
    function selectLevel(select) {
        if (!select.value){
            app.application.level_name="{{ __('not match') }}";
            return;
        }
        
        var levelName = $('.qualification_types_id option[value='+select.value+']').attr('data-level-name');
        var levelId = $('.qualification_types_id option[value='+select.value+']').attr('data-level');
        var grade = $('.qualification_types_id option[value='+select.value+']').attr('data-grade');
        
        if (app.application.grade < grade) {
            levelName = "{{ __('not match') }}";
            levelId= null;
            console.log(app.application.grade + "|" + grade);
        }
        
        app.application.level_name=levelName;
        app.application.level_id=levelId;
    }

    $(document).ready(function(){
        formAjax(false, function(data){
                playSound("not2");

                if (data.status == 1) {
                    swal("done !", data.message, "success");
                } else { 
                    var div = document.createElement("div");
                    div.innerHTML = data.message;
                    div.className = "w3-text-red";
                    swal({
                        type: "error",
                        content: div 
                    });
                }
            });
            $(".grade_number")[0].onkeypress = function(){


            @if (!isset($student))
            selectLevel($("select[name=qualification_types_id]")[0]);
            @endif
        };

    
            setTimeout(function(){
                selectLevel($("select[name=qualification_types_id]")[0]);
            }, 3000);
            
        app.application.qualification_id = '{{ isset($student)? $student->qualification_id : "" }}';
    });
    var app = new Vue({
        el: '#app',
        data: {
            application: { 
                level_id: '{{ isset($student)? $student->level_id : "" }}',
                level_name: '{{ isset($student)? optional($student->level)->name : "" }}',
                qualification_types_id: '{{ isset($student)? $student->qualification_types_id : "" }}',
                qualification_id: '{{ isset($student)? $student->qualification_id : "" }}',
                country_id: '{{ isset($student)? $student->country_id : "" }}',
                government_id: '{{ isset($student)? $student->government_id : "" }}',
                city_id: '{{ isset($student)? $student->city_id : "" }}',
                academic_years_id: '{{ isset($student)? $student->academic_years_id : "" }}',
                grade: '{{ isset($student)? $student->grade : "" }}'
            }
        },
        methods: {
        },
        computed: {
        },
        watch: {
            grade: function(value){
                selectLevel($("select[name=qualification_types_id]")[0]);
                return value;
            }
        }
    });

    function readURL(input, id) {

        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#' + id).attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]); // convert to base64 string
        }
    }


    function showDiv() {
      var x = document.getElementById("military");
        x.style.display = "block";
    }
    function hidDiv() {
      var x = document.getElementById("military");
        x.style.display = "none";
    }
</script>

@endsection