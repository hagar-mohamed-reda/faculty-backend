<?php

namespace App\Http\Controllers;

use App\City;
use App\Http\Requests\CityRequest;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\User;
use App\LoginHistory;

class AuthController extends Controller
{
    public function __construct()
    { 

    }

    public function login(Request $request) {
        $resource = null;
        try { 
              
            //return dump(toClass($data)->api_token);
            $validator = validator($request->json()->all(), [ 
                "email" =>  "required",  
                "password" =>  "required" 
            ], [
                "email.unique" => __('name already exist'),
                "password.required" => __('fill all required data')  
            ]);
            
            if ($validator->fails()) {
                return responseJson(0, $validator->errors()->first());
            }
            $data = $request->all(); 

            $user = User::where('email', $request->email)->where('password', $request->password)->first();

            if (!$user)
                return responseJson(0, __('email or password error'));
              
            if (!$user->api_token) {
                $user->api_token = time();
                $user->update();
            }
            
            $resource = $user->fresh();
            LoginHistory::create([
                'ip' => $request->ip(),
                'phone_details' => LoginHistory::getInfo($request),
                'user_id' => $user->id,
            ]);

        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
        
        return responseJson(1, __('done'), $resource);
    }


    public function getProfile(Request $request) {
        $profile = [];
        $profile['user'] = $request->user;
        $profile['notifications'] = $request->user->notifications()->get();
        $profile['loginHistory'] = $request->user->loginHistory()->get();

        // 
        return $profile;
    }

    public function update(Request $request) {
        try {  
            $user = $request->user;
            $data = $request->all();
            $user->update($data);

            uploadImg($request->file('image'), "uploads/users", function($filename) use ($user) {
                $user->update([
                    'image' => "uploads/users" . "/" . $filename
                ]);
            });
            watch(__('update profile info'), "fa fa-id-card-o"); 
            return responseJson(1, __('done'), $user);
        } catch (\Exception $ex) { 
            return responseJson(0, $ex->getMessage());
        }
    }
 
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function updatePhone(Request $request) {
        try {
            $validator = validator()->make($request->all(), [
                'phone' => 'required|unique:users',
                'confirm_phone' => 'required', 
            ], [
                "phone.required" => __("phone_required"), 
                "new_phone.unique" => __("phone_already_exist"), 
                "confirm_phone.required" => __("phone_required"), 
            ]);

            if ($validator->fails()) {
                $key = $validator->errors()->first(); 
                return Message::error(__($key));
            }

            if ($request->phone != $request->confirm_phone)
                return Message::error(__('phones not match')); 
 
            $user = $request->user; 
            
            $user->update([
                "phone" => $request->phone
            ]); 
            watch(__('update profile info'), "fa fa-id-card-o");
            return responseJson(0, __('done'), $user); 
        } catch (\Exception $ex) {
            return responseJson(0, $ex->getMessage());
        }
    }
 
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function updatePassword(Request $request) {
        try {
            $validator = validator()->make($request->all(), [
                'old_password' => 'required',
                'new_password' => 'required|min:8',
                'confirm_password' => 'required', 
            ], [
                "old_password.required" => __("old_password_required"), 
                "new_password.required" => __("new_password_required"),  
                "new_password.min" => __("min password character is 8"),  
            ]);

            if ($validator->fails()) {
                $key = $validator->errors()->first(); 
                return Message::error(__($key));
            }
            
            if ($request->new_password != $request->confirm_password)
                return Message::error(__('passwords not match')); 
 
            $user = $request->user;

            if ($request->old_password != $user->password)
                return Message::error(__('your old password is not correct')); 
 
            
            $user->update([
                "password" => $request->new_password
            ]); 
            
            watch(__('update profile info'), "fa fa-id-card-o");
            return responseJson(0, __('done'), $user); 
        } catch (\Exception $ex) {
            return responseJson(0, $ex->getMessage());
        }
    }
}
