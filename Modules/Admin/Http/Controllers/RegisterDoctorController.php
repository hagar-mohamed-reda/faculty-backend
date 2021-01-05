<?php

namespace Modules\Admin\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Admin\Entities\RegisterDoctor;

class RegisterDoctorController extends Controller
{
    public function get(Request $request){
        $query = RegisterDoctor::latest()->get();
        return $query;
    }

    public function register(Request $request){
        $validator = validator($request->all(), [
            "course_id" => "required",
            "doctor_id" => "required",
            "group_id" => "required",
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
			$data = $request->all();

			if (!isset($data['faculty_id'])) {
				$data['faculty_id'] = optional($request->user)->faculty_id;
			}
            $resource = RegisterDoctor::create($data);
			watch("add Register doctor " . $resource->name, "fa fa-registered");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }
}
