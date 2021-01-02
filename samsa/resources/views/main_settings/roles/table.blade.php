<table class="table table-bordered default-datatable" id="table" >
    <thead>
    <tr>
        <th> ID </th>
        <th> {{ __('role') }} </th>
        <th> </th>
    </tr>
    </thead>
    <tbody>
    @foreach($roles as $row)
    <tr>
        <td>{!! $row->id !!}</td>
        <td>{!! $row->name !!}</td>

        <td>
            <div class="btn-group" role="group" aria-label="Basic example">
                @permission('roles_update')
                {{-- style="@if($row->name == 'super_admin') display: inline-block;pointer-events: none;@endif " --}}
                <a href="{{route('roles.edit', $row->id)}}"style="@if($row->name == 'super_admin') display: inline-block;pointer-events: none;@endif" >
                    <div class="col-md-4 col-sm-6 col-12">
                        <div class="fonticon-wrap"><i class="fa fa-pencil"></i></div>
                    </div>
                </a>
                @endpermission

                @permission('roles_delete')
                <a onclick="Delete({{'deleteForm'.$row->id}})" id="type-warning" style="@if($row->name == 'super_admin') display: inline-block;
                    pointer-events: none;@endif " >
                    <div class="col-md-4 col-sm-6 col-12">
                        <div class="fonticon-wrap"><i class="fa fa-trash-o"></i></div>
                    </div>
                </a>
                @endpermission

                <form id="deleteForm{{$row->id}}" action="{{route('roles.destroy',$row->id)}}" method="post">
                    @method("DELETE")
                    @csrf
                </form>
            </div>
        </td>
    </tr>
    @endforeach
    </tbody>
</table>
