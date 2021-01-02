<div class="row">
    <div class="col-sm-6">
        <div class="form-group">
            <div class="controls">
                <label for="name"> الاسم يالانجليزية</label>
                {!! Form::text('name',null,['required'=>'required','class'=>'form-control','id'=>'name','placeholder'=>'الاسم يالانجليزية'])!!}
                @error('name')
                    <span class="text-danger"> {!! $message !!}</span>
                @enderror
            <div class="help-block"></div></div>
        </div>
    </div>

</div>
<section id="nav-justified">
    <div class="row">
        <div class="col-sm-12">
            <div class="card overflow-hidden">
                <div class="card-header">
                    <h4 class="card-title">الصلاحيات</h4>
                </div>
                <div class="card-content">
                    <div class="card-body">
                        @php

                        $models = [
                            'users', 'roles', 'cities', 'governments', 'countries', 'settings', 'academic-years',
                            'levels', 'nationalities', 'languages', 'registeration-status', 'registeration-methods'
                            ,'departments', 'divisions', 'qualifications', 'qualification-types', 'parent-jobs'
                            ,'relations', 'student-code-series'
                            ]
                            @endphp

                        <!-- Tab panes -->

                        <div class="tab-content">

                            <div class="table-responsive">
                                <table class="table table-borderless mb-0">
                                    <tbody>
                                        <fieldset>
                                            <div class="vs-checkbox-con vs-checkbox-primary">
                                                <input type="checkbox" onclick="toggle(this);" /><br />                                                <span class="vs-checkbox">
                                                    <span class="vs-checkbox--check">
                                                        <i class="vs-icon feather icon-check"></i>
                                                    </span>
                                                </span>
                                                <span class="">اختيار الكل</span>
                                            </div>
                                        </fieldset>
                                    @foreach ($models as $index=>$model )

                                        <tr>
                                            <th scope="row"><label for="">{!! $model !!}</label></th>

                                            <td>
                                                <fieldset>
                                                    <div class="vs-checkbox-con vs-checkbox-primary">
                                                        <input type="checkbox"  @if(isset($role) && $role->hasPermission($model.'_read')) checked @endif  value="{{ $model }}_read" name="permissions[]">
                                                        <span class="vs-checkbox">
                                                            <span class="vs-checkbox--check">
                                                                <i class="vs-icon feather icon-check"></i>
                                                            </span>
                                                        </span>
                                                        <span class="">عرض</span>
                                                    </div>
                                                </fieldset>
                                            </td>

                                            <td>
                                                <fieldset>
                                                    <div class="vs-checkbox-con vs-checkbox-success">
                                                        <input type="checkbox" @if(isset($role) && $role->hasPermission($model.'_create')) checked @endif  value="{{ $model }}_create" name="permissions[]">
                                                        <span class="vs-checkbox">
                                                            <span class="vs-checkbox--check">
                                                                <i class="vs-icon feather icon-check"></i>
                                                            </span>
                                                        </span>
                                                        <span class="">اضافة</span>
                                                    </div>
                                                </fieldset>
                                            </td>
                                            <td>
                                                <fieldset>
                                                    <div class="vs-checkbox-con vs-checkbox-info">
                                                        <input type="checkbox"  @if(isset($role) && $role->hasPermission($model.'_update')) checked @endif value="{{ $model }}_update" name="permissions[]">
                                                        <span class="vs-checkbox">
                                                            <span class="vs-checkbox--check">
                                                                <i class="vs-icon feather icon-check"></i>
                                                            </span>
                                                        </span>
                                                        <span class="">تعديل</span>
                                                    </div>
                                                </fieldset>
                                            </td>
                                            <td>
                                                <fieldset>
                                                    <div class="vs-checkbox-con vs-checkbox-danger">
                                                        <input type="checkbox"  @if(isset($role) && $role->hasPermission($model.'_delete')) checked @endif value="{{ $model }}_delete"  name="permissions[]">
                                                        <span class="vs-checkbox">
                                                            <span class="vs-checkbox--check">
                                                                <i class="vs-icon feather icon-check"></i>
                                                            </span>
                                                        </span>
                                                        <span class="">حذف</span>
                                                    </div>
                                                </fieldset>
                                            </td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>


                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@section('more_scripts')
<script>
    var array = [];
    console.log('scripts');
    $("select[name=country_id]")[0].onchange = function(){
        console.log('changed');
        loadGovernmentBasicOnCountry(this.value);
    };

    function loadGovernmentBasicOnCountry(countryId) {
        $.get("{{ url('government/') }}/" + countryId, function(result){
            array = [];
            setGoverOptions(result);
        });
    }

    function setGoverOptions(array) {
        $("select[name=government_id]").children().remove();
        for(var row in array) {
            var option = document.createElement('option');
            option.value = array[row];
            option.innerHTML = row;

            console.log(option);
            $("select[name=government_id]").append(option);
        }
    }
</script>
<script>
    function toggle(source) {
    var checkboxes = document.querySelectorAll('input[type="checkbox"]');
    for (var i = 0; i < checkboxes.length; i++) {
        if (checkboxes[i] != source)
            checkboxes[i].checked = source.checked;
    }
}
</script>
@endsection
