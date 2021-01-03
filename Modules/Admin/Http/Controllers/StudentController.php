<?php

namespace Modules\Admin\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Admin\Entities\Student;

class StudentController extends Controller
{
    public function get(){
        $query = Student::latest()->paginate(10);
        return $query;
    }

    public function store(Request $request)
    {
        $validator = validator($request->all(), [
            "name" => "required",
            "code" => "required",
            "national_id" => "required",
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
			$data = $request->all();

			if (!isset($data['faculty_id'])) {
				$data['faculty_id'] = optional($request->user)->faculty_id;
			}
            $resource = Student::create($data);
			watch("add student " . $resource->name, "fa fa-bank-up");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function update(Request $request, Student $resource)
    {
        $validator = validator($request->all(), [
            "name" => "required",
            "code" => "required",
            "national_id" => "required",
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
            $resource->update($request->all());
			watch("edit student " . $resource->name, "fa fa-bank-up");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function destroy(Student $resource)
    {
        try {
			watch("remove student " . $resource->name, "fa fa-bank-up");
            $resource->delete();
            return responseJson(1, __('done'));
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    


}
