<div class="row">
    <div class="col-sm-6">
        <div class="form-group">
            <div class="controls">
                <label for="name"> {{ __('government') }} </label>
                {!! Form::text('name',null,['class'=>'form-control','id'=>'name','placeholder'=> __('government') ])!!}
                @error('name')
                    <span class="text-danger"> {!! $message !!}</span>
                @enderror
            <div class="help-block"></div></div>
        </div>
    </div>


    <div class="col-sm-6">
        <div class="form-group">
            <div class="controls">
                <label class="label-r" for="national_id_place"> {{ __('country') }} </label>
                {!! Form::select('country_id',App\Country::pluck('name','id'),null,['class'=>'custom-select','id'=>'customSelect', 'placeholder'=>  __('select country') ])!!}
                @error('country_id')
                    <span class="text-danger"> {!! $message !!}</span>
                @enderror
            </div>
        </div>
    </div>

    <div class="col-12">
        <div class="form-group">
            <div class="controls">
                <label for="end_date">{{ __('notes') }}</label>
                {!! Form::textarea('notes',null,['class'=>'form-control','id'=>'notes','placeholder'=> __('notes') ])!!}
            <div class="help-block"></div></div>
        </div>
    </div>
</div>


@section('more_scripts')
@if(isset($government))
<script>  
    $('select[name=country_id]').val('{{ $government->country_id }}');
</script>
@endif
@endsection