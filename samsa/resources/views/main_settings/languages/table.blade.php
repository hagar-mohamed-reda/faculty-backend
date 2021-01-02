<table class="table table-bordered default-datatable" id="table" >
    <thead>
    <tr>
        <th> ID </th>
        <th> {{ __('language') }} </th>
        <th> {{ __('notes') }} </th>
        <th> </th>
    </tr>
    </thead>
    <tbody>
    @foreach($languages as $row)
    <tr>
        <td>{!! $row->id !!}</td>
        <td>{!! $row->name !!}</td>
        <td>{!! $row->notes !!}</td>
        <td>
            <div class="btn-group" role="group" aria-label="Basic example">

                @permission('languages_update')
                <a href="{{route('languages.edit', $row->id)}}">
                    <div class="col-md-4 col-sm-6 col-12">
                        <div class="fonticon-wrap"><i class="fa fa-pencil"></i></div>
                    </div>
                </a>
                @endpermission
                @permission('languages_delete')
                <a onclick="Delete({{'deleteForm'.$row->id}})" id="type-warning">
                    <div class="col-md-4 col-sm-6 col-12">
                        <div class="fonticon-wrap"><i class="fa fa-trash-o"></i></div>
                    </div>
                </a>
                @endpermission

                <form id="deleteForm{{$row->id}}" action="{{route('languages.destroy',$row->id)}}" method="post">
                    @method("DELETE")
                    @csrf
                </form>
            </div>
        </td>
    </tr>
    @endforeach
    </tbody>
</table>
