<?php

namespace App\Http\Controllers;

use App\Role;
use App\RolePermission; 
use App\Permission;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Hash;
use Modules\Settings\Http\Requests\RoleRequest;

class RoleController extends Controller
{

    public function __construct()
    {
        // $this->middleware(['permission:roles_read'])->only('index');
        // $this->middleware(['permission:roles_create'])->only('create');
        // $this->middleware(['permission:roles_update'])->only('edit');
        // $this->middleware(['permission:roles_delete'])->only('destroy');

    }
    /**
     * Display a listing of the resource.
     * @return Response
     */
    public function index()
    {
        $roles = Role::latest()->get();
        return $roles;
    }

    public function getPermissions() {
        return Permission::all();
    }

    /**
     * Show the form for creating a new resource.
     * @return Response
     */
    public function create()
    {
        return view('settings::roles.create');
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Response
     */
    public function store(Request $request)
    {
        $validator = validator($request->all(), [
            'name' => 'required|unique:roles' 
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->first());
        }
        try {
            $input = $request->all(); 
            $role = Role::create($input); 
        } catch (\Exception $ex) {
            return responseJson(0, $ex->getMessage());
        }
        return responseJson(1, __('done'));
    }
 

    /**
     * Show the form for editing the specified resource.
     * @param int $id
     * @return Response
     */
    public function edit(Role $role)
    {
        $roles = $role->getRoles();
        return view('settings::roles.edit', compact('role', 'roles'));
    }

    public function updatePermissions(Request $request, $id) { 
        $role = Role::find($id); 
        // remove old permissions
        $role->rolePermissions()->delete(); 

        foreach($request->permissions as $item) {
            RolePermission::create([
                "role_id" => $id,
                "permission_id" => $item
            ]);
        }

        return responseJson(1, __('done'));
    }

    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $id
     * @return Response
     */
    public function update(Request $request, $id)
    { 
        $role = Role::find($id); 
        $validator = validator($request->all(), [
            'name' => 'required|unique:roles,name,' . $role->name 
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->first(), "");
        }
        try { 
            $input = $request->all();
 
            $role = $role->update($input);

            return responseJson(1, __('done'), $role);

        } catch (\Exception $ex) {
            return responseJson(0,  $ex->getMessage(), "");

        }
    }

    /**
     * Remove the specified resource from storage.
     * @param int $id
     * @return Response
     */
    public function destroy($id)
    {
        $role = Role::find($id); 
        if ($role->can_delete) 
            $role->delete();
        return responseJson(1, __('done'), '');
    }
}
