<?php

namespace Modules\Doctor\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Doctor\Entities\Doctor;
use Modules\Doctor\Entities\LoginHistory;

class AuthController extends Controller
{
    public function login(Request $request) {

        $validator = validator()->make($request->all(), [
            'email' => 'required',
            'password' => 'required',
        ]);

        if ($validator->fails()) {
            //$key = $validator->errors()->first();
            //return redirect($redirect . "?status=0&msg=" . $key);
            return responseJson(0, $validator->errors()->getMessages(), "");

        }
        $error = __("email or password error");

        try { 
            $user = Doctor::where("email", $request->email)
                            ->orWhere('phone', $request->email)
                            ->orWhere('username', $request->email)
                            ->where("password", $request->password)
                            ->first();

            if ($user) {
                if ($user->active == 0)
                    return responseJson(0, __('your account is not confirmed'));

                //Auth::login($user);
                $user->update([
                    "api_token"=> randToken()
                ]);

                LoginHistory::create([
                    'ip' => $request->ip(),
                    'user_id' => $user->id,
                    'phone_details' => LoginHistory::getInfo($request)
                ]);

                return responseJson(1, __('done'), $user);
            }
        } catch (Exception $ex) {
            return responseJson(0, $ex->getMessage());
        }
		return responseJson(0, $error);
    }

    public function forgetPassword(Request $request) {

        $validator = validator()->make($request->all(), [
            'email' => 'required',
        ]);

        if ($validator->fails()) {
            //$key = $validator->errors()->first();
            //return redirect($redirect . "?status=0&msg=" . $key);
            return responseJson(0, $validator->errors()->getMessages(), "");

        }
        try {
            $user = Doctor::where("email", $request->emial)->first();

            if ($user) {
                $newPassword = $user->password;

                $user->update([
                    "password" => $newPassword,
                    "api_token"=> randToken()
                ]);

                //email design code


                //return redirect($redirect . "?status=1&msg=" . __('your account created please confirm your account'));
                return responseJson(1,  __('your account created please confirm your account'), $user);

            } else {
                //return redirect($redirect . "?status=0&msg=" . __('this email is not exist'));
                return \responseJson(0,  __('this email is not exist'));
            }
        } catch (\Exception $ex) {
            return responseJson(0, $ex->getMessage());

        }
        //return redirect($redirect . "?status=0&msg=" . __('there is an error'));

    }
}
