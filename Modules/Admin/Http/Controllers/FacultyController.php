<?php

namespace Modules\Admin\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Admin\Entities\Faculty;

class FacultyController extends Controller
{

    public function index()
    {
        $query = Faculty::latest()->get();
        return $query;
    }

    public function store(Request $request)
    {
        $validator = validator($request->all(), [
            "name" => "required|unique:faculty,name,".$request->id,
            "logo"=> "nullable",
            "description"=> "nullable",
            "message_text"=> "nullable",
            "message_file"=> "nullable",
            "vision_text"=> "nullable",
            "vision_file"=> "nullable",
            "target_text"=> "nullable",
            "target_file"=> "nullable",
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
			$data = $request->all();

			if (!isset($data['faculty_id'])) {
				$data['faculty_id'] = optional($request->user)->faculty_id;
			}
            $resource = Faculty::create($data);
			watch("add faculty " . $resource->name, "fa fa-bank-up");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function update(Request $request, Faculty $resource)
    {
        $validator = validator($request->all(), [
            "name" => "required|unique:faculty,name,".$request->id,
            "logo"=> "nullable",
            "description"=> "nullable",
            "message_text"=> "nullable",
            "message_file"=> "nullable",
            "vision_text"=> "nullable",
            "vision_file"=> "nullable",
            "target_text"=> "nullable",
            "target_file"=> "nullable",
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
            $resource->update($request->all());
			watch("edit faculty " . $resource->name, "fa fa-bank-up");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function destroy(Faculty $resource)
    {
        try {
			watch("remove faculty " . $resource->name, "fa fa-bank-up");
            $resource->delete();
            return responseJson(1, __('done'));
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }
}
