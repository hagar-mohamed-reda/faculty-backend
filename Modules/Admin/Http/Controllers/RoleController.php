<?php

namespace Modules\Admin\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;

use Maatwebsite\Excel\Facades\Excel; 
use App\Role;
use DB;

class RoleController extends Controller {

    public function get(Request $request) {

        $query = Role::query();
        if ($request->search) {
            $query->where('name', 'like', '%' . $request->search . '%');
        }
  
        if ($request->faculty_id > 0)
            $query->where('faculty_id', $request->faculty_id);
 
        return $query->latest()->paginate(60);
    }

    public function store(Request $request) {
        $validator = validator($request->all(), [
            "name" => "required",     
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->first(), "");
        }
        try {
            $data = $request->all();  
            if (!isset($data['faculty_id'])) {
                $data['faculty_id'] = optional($request->role)->faculty_id;
            }
            $resource = Role::create($data);
 
            watch("add role " . $resource->name, "fa fa-th-list");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function update(Request $request, Role $resource) {
        $validator = validator($request->all(), [
            "name" => "required", 
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->first(), "");
        }
        try {
            $data = $request->all(); 
            if (!isset($data['faculty_id'])) {
                $data['faculty_id'] = optional($request->role)->faculty_id;
            }
            $resource->update($data);
             
            
            watch("edit role " . $resource->name, "fa fa-th-list");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function destroy(Role $resource) {
        try {
            watch("remove role " . $resource->name, "fa fa-th-list");
            $resource->delete();
            return responseJson(1, __('done'));
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }
  

}
