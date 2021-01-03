<?php

namespace Modules\Admin\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;

class AuthController extends Controller
{
    public function login(){
        $validator = validator($request->all(), [
            "email" => "required",
            "password" => "required",
        ]);

        if (Hash::check($request->password, $hashedPassword)) {
            
        }
    }
}
