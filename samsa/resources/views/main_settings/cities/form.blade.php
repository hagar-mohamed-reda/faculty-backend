<div class="row">
    <div class="col-sm-6">
        <div class="form-group">
            <div class="controls">
                <label for="name"> {{ __('city') }} </label>
                {!! Form::text('name',null,['required'=>'required','class'=>'form-control','id'=>'name','placeholder'=> __('city')])!!}
                @error('name')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
                <div class="help-block"></div></div>
        </div>
    </div>

    <div class="col-sm-6">
        <div class="form-group">
            <div class="controls">
                <label class="label-r" for="national_id_place">{{ __('country') }}</label>
                {!! Form::select('country_id',App\Country::pluck('name','id'),null,['required'=>'required','id'=>"country",'class'=>'custom-select','id'=>'customSelect', 'placeholder' =>__('select country')])!!}
                @error('country_id')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
            </div>
        </div>
    </div>

    <div class="col-sm-6">
        <div class="form-group">
            <div class="controls">
                <label class="label-r" for="national_id_place"> {{ __('government') }}</label>
                {!! Form::select('government_id',App\Government::pluck('name','id'),null,['required'=>'required','id' => 'gover','class'=>'custom-select','id'=>'customSelect', 'placeholder' =>  __('select government')])!!}
                @error('government_id')
                <span class="text-danger"> {!! $message !!}</span>
                @enderror
            </div>
        </div>
    </div>

    <div class="col-6">
        <div class="form-group">
            <div class="controls">
                <label for="end_date"> {{ __('notes') }}</label>
                {!! Form::textarea('notes',null,['class'=>'form-control','id'=>'notes','placeholder'=> __('notes')])!!}
                <div class="help-block"></div></div>
        </div>
    </div>
</div>

@section('more_scripts')
@if(isset($city))
<script>
    $('select[name=country_id]').val('{{ optional($city -> government)->country_id }}');
</script>
@endif
<script>


    var array = [];
    console.log('scripts');
    $("select[name=country_id]")[0].onchange = function () {
        console.log('changed');
        loadGovernmentBasicOnCountry(this.value);
    };

    function loadGovernmentBasicOnCountry(countryId) {
        $.get("{{ url('government/') }}/" + countryId, function (result) {
            array = [];
            setGoverOptions(result);
        });
    }

    function setGoverOptions(array) {
        $("select[name=government_id]").children().remove();
        for (var row in array) {
            var option = document.createElement('option');
            option.value = array[row];
            option.innerHTML = row;

            console.log(option);
            $("select[name=government_id]").append(option);
        }
    }
</script>
@endsection
