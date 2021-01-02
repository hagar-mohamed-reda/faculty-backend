<?php

namespace App\Http\Controllers;

use App\Role;
use App\RolePermission;
use App\User;
use App\UserPermission;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Hash;
use Modules\Settings\Http\Requests\UserRequest;

class UserController extends Controller
{

    public function __construct()
    {
        // $this->middleware(['permission:users_read'])->only('index');
        // $this->middleware(['permission:users_create'])->only('create');
        // $this->middleware(['permission:users_update'])->only('edit');
        // $this->middleware(['permission:users_delete'])->only('destroy');

    }
    /**
     * Display a listing of the resource.
     * @return Response
     */
    public function index()
    {
        $users = User::with(['role'])->OrderBy('created_at', 'desc')->get();
        return $users;
    }

    /**
     * Show the form for creating a new resource.
     * @return Response
     */
    public function create()
    {
        return view('settings::users.create');
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Response
     */
    public function store(Request $request)
    {
        $validator = validator($request->all(), [
            'name' => 'required',
            'username' => 'required',
            'password' => 'required',
            'email'=>'required|email|unique:users,email',
            'phone' => 'required|unique:users,phone',
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->first());
        }
        try {
            $input = $request->all();

            if ($request->has('image')) {
                $image = saveImage($request->image, 'users');
                $input['image'] = $image;
            } else {
                $input['image'] = 'uploads/users/User_icon_2.svg.png';
            } 

            $user = User::create($input);

 
        } catch (\Exception $ex) {
            return responseJson(0, $ex->getMessage());
        }
        return responseJson(1, __('done'));
    }
 

    /**
     * Show the form for editing the specified resource.
     * @param int $resource
     * @return Response
     */
    public function edit(User $user)
    {
        $roles = $user->getRoles();
        return view('settings::users.edit', compact('user', 'roles'));
    }

    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $resource
     * @return Response
     */
    public function update(Request $request, $resource)
    { 
        $validator = validator($request->all(), [
            'name' => 'required',
            'username' => 'required',
            'password' => 'required',
            'email'=>'required|email|unique:users,email,'.$resource,
            'phone' => 'required|unique:users,phone,'.$resource,
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->first(), "");
        }
        try { 

            $user = User::find($resource); 

                //delete all user roles
                $input = $request->all();

                if ($request->hasFile('image')) {
                    deleteFile($user->image);
                    $input['image'] = saveImage($request->image, 'users');
                } else {
                    $input['image'] = $user->image;
                } 
 
                $user = $user->update($input);

                return responseJson(1, __('done'), $user);

        } catch (\Exception $ex) {
            return responseJson(0,  $ex->getMessage(), "");

        }
    }

    /**
     * Remove the specified resource from storage.
     * @param int $resource
     * @return Response
     */
    public function destroy($resource)
    {
        $user = User::find($resource); 

        if ($user->image != null) {
            deleteFile($user->image);
        }

        $user->delete();
        return responseJson(1, __('done'), '');
    }
}
