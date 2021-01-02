
<table class="table table-bordered default-datatable" id="table" >
    <thead>
    <tr>
        <th> ID </th>
        <th> {{ __('nationality') }} </th>
        <th> {{ __('notes') }} </th>
        <th>  </th>
    </tr>
    </thead>
    <tbody>
    @php $i=1 @endphp
    @foreach($nationalities as $row)
    <tr>
        <td>{!! $row->id !!}</td>
        <td>{!! $row->name !!}</td>
        <td>{!! $row->notes !!}</td>
        <td>
            <div class="btn-group" role="group" aria-label="Basic example">
                @permission('nationalities_update')
                <a href="{{route('nationalities.edit', $row->id)}}">
                    <div class="col-md-4 col-sm-6 col-12">
                        <div class="fonticon-wrap"><i class="fa fa-pencil"></i></div>
                    </div>
                </a>
                @endpermission

                @permission('nationalities_delete')
                <a onclick="Delete({{'deleteForm'.$row->id}})" id="type-warning">
                    <div class="col-md-4 col-sm-6 col-12">
                        <div class="fonticon-wrap"><i class="fa fa-trash-o"></i></div>
                    </div>
                </a>
                @endpermission

                <form id="deleteForm{{$row->id}}" action="{{route('nationalities.destroy',$row->id)}}" method="post">
                    @method("DELETE")
                    @csrf
                </form>
            </div>
        </td>
    </tr>
    @endforeach
    </tbody>
</table>
