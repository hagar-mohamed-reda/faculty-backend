

<div class="row" >
    @foreach($resources as $resource)
    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6" >
        <div class="box w3-card shadow w3-padding" >
            <div class="media">
                <div class="media-left">
                    <a href="#">
                        @if ($resource->personal_photo && file_exists(public_path($resource->personal_photo)))
                        <img class="media-object w3-round {{ randColor() }}" style="width: 100px; height: 100px" src="{{url($resource->personal_photo)}}" alt="">
                        @else
                        <img class="media-object w3-round" style="width: 100px; height: 100px" src="{{url('/app-assets/images/avatar/avatar.png')}}" alt="">
                        @endif 
                    </a>
                </div>
                <div class="media-body">
                    <h4 class="media-heading" style="padding: 5px">{{ $resource->name }}</h4>
                    <table class="table" style="text-align: right!important" >

                        <tr  style="text-align: right!important" >
                            <th>{{ __('accepted by') }}</th>
                            <td>
                                {{ optional($resource->user)->name }}
                            </td>
                        </tr>
                        <tr  style="text-align: right!important" >
                            <th>{{ __('done in') }}</th>
                            <td>
                                {{ $resource->created_at }}
                            </td>
                        </tr>
                        <tr  style="text-align: right!important" >
                            <th>{{ __('academic_years') }}</th>
                            <td>
                                {{ optional($resource->academicYear)->name }}
                            </td>
                        </tr>
                        <tr>
                            <th>{{ __('registration_status') }}</th>
                            <td>
                                {{ optional($resource->registerationStatus)->name }}
                            </td>
                        </tr>
                        <tr>
                            <th>{{ __('qualification_types') }}</th>
                            <td>
                                {{ optional($resource->QualificationTypes)->name }}
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="box-footer" >
                <div class="btn-group" role="group" aria-label="Basic example"> 
                    <a href="{{route('students.edit', $resource->id)}}">
                        <div class="col-md-4 col-sm-6 col-12">
                            <div class="fonticon-wrap"><i class="fa fa-pencil"></i></div>
                        </div>
                    </a>
                    <a href="{{route('students.show', $resource->id)}}">
                        <div class="col-md-4 col-sm-6 col-12">
                            <div class="fonticon-wrap"><i class="fa fa-desktop"></i></div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    @endforeach
</div> 

<div class="hidden" >

    <table class="table" id="table" >
        <thead>

            <tr>
                <td>#</td>
                <td>{{ __('name') }}</td>
                <td>{{ __('academic_years') }}</td>
                <td>{{ __('registration_status') }}</td>
                <td>{{ __('qualification_types') }}</td>
            </tr>
        </thead>
        <tbody>
            @foreach($resources as $resource)
            <tr>
                <td>{{ $loop->iteration }}</td>
                <td>{{ $resource->name }}</td>
                <td>{{ optional($resource->academicYear)->name }}</td>
                <td> {{ optional($resource->registerationStatus)->name }}</td>
                <td>{{ optional($resource->QualificationTypes)->name }}</td> 
            </tr>
            @endforeach
        </tbody>
    </table>
</div>