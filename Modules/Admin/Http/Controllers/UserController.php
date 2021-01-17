<?php

namespace Modules\Admin\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;

use Maatwebsite\Excel\Facades\Excel;
use Modules\Admin\http\Exports\UsersExport;
use Modules\Admin\http\Imports\UsersImport;
use App\User;
use DB;

class UserController extends Controller {

    public function get(Request $request) {

        $query = User::query();
        if ($request->search) {
            $query->where('name', 'like', '%' . $request->search . '%')
                    ->orWhere('type', 'like', '%' . $request->search . '%');
        }

        if ($request->role_id > 0)
            $query->where('role_id', $request->degree_id);
 
        if ($request->faculty_id > 0)
            $query->where('faculty_id', $request->faculty_id);
 
        return $query->with(['role', 'faculty'])->latest()->paginate(10);
    }

    public function store(Request $request) {
        $validator = validator($request->all(), [
            "name" => "required",
            "username" => "required|unique:users,username," . $request->id,  
            "password" => "required",  
            "type" => "required",  
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->first(), "");
        }
        try {
            $data = $request->all();
            
            if (isset($data['photo']))
                unset($data['photo']);

            if (!isset($data['faculty_id'])) {
                $data['faculty_id'] = optional($request->user)->faculty_id;
            }
            $resource = User::create($data);

            // upload resource image
            uploadImg($request->file('photo'), User::$prefix, function($filename) use ($resource) {
                $resource->update([
                    "photo" => $filename
                ]);
            }, $resource->photo);
            
            
            watch("add user " . $resource->name, "fa fa-user");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function update(Request $request, User $resource) {
        $validator = validator($request->all(), [
            "name" => "required",
            "username" => "required|unique:users,username," . $request->id,  
            "password" => "required",  
            "type" => "required",  
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->first(), "");
        }
        try {
            $data = $request->all();

            if (isset($data['photo']))
                unset($data['photo']);
            
            $resource->update($data);
            
            // upload resource image
            uploadImg($request->file('photo'), User::$prefix, function($filename) use ($resource) {
                $resource->update([
                    "photo" => $filename
                ]);
            }, $resource->photo);
            
            
            watch("edit user " . $resource->name, "fa fa-user");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function destroy(User $resource) {
        try {
            watch("remove user " . $resource->name, "fa fa-user");
            $resource->delete();
            return responseJson(1, __('done'));
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }
  

}
