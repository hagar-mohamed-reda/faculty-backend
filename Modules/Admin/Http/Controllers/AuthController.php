<?php

namespace Modules\Admin\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Admin\Entities\LoginHistory;

class AuthController extends Controller
{
    public function login(Request $request) {

        $validator = validator()->make($request->all(), [
            'email' => 'required',
            'password' => 'required',
        ]);

        if ($validator->fails()) {
            $key = $validator->errors()->first();
            return redirect($redirect . "?status=0&msg=" . $key);
        }
        $error = __("email or password error");


        try {
            $user = User::where("email", $request->email)
            ->where("password", $request->password)
            ->where('type', $request->type)
            ->first();

            if ($user) {
                if ($user->active == 0)
                    return redirect($redirect . "?status=0&msg=" . __('your account is not confirmed'));

                Auth::login($user);

                LoginHistory::create([
                    'ip' => $request->ip(),
                    'user_id' => $user->id,
                    'email_details' => LoginHistory::getInfo($request)
                ]);

                return redirect($user->type == 'student'? 'students' : 'dashboard');
            }
        } catch (Exception $ex) {}
        return redirect($redirect . "?status=0&msg=$error");
    }

    public function forgetPassword(Request $request) {

        $validator = validator()->make($request->all(), [
            'email' => 'required',
        ]);

        if ($validator->fails()) {
            $key = $validator->errors()->first();
            return redirect($redirect . "?status=0&msg=" . $key);
        }
        try {
            $user = User::where("email", $request->emial)->first();

            if ($user) {
                $newPassword = $user->password;

                $user->update([
                    "password" => $newPassword
                ]);

                //email design code


                return redirect($redirect . "?status=1&msg=" . __('your account created please confirm your account'));
            } else {
                return redirect($redirect . "?status=0&msg=" . __('this email is not exist'));
            }
        } catch (\Exception $ex) {}
        return redirect($redirect . "?status=0&msg=" . __('there is an error'));
    }
}