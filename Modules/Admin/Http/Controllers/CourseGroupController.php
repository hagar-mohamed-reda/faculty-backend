<?php

namespace Modules\Admin\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Admin\Entities\CourseGroup;

class CourseGroupController extends Controller
{

    public function get()
    {
        $query = CourseGroup::where('course_id', request()->course_id)->latest()->get();
        return $query;
    }

    public function store(Request $request)
    {
        $validator = validator($request->all(), [
            "name" => "required|unique:course_groups,name,".$request->id,
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
			$data = $request->all();

			if (!isset($data['faculty_id'])) {
				$data['faculty_id'] = optional($request->user)->faculty_id;
			}
            $resource = CourseGroup::create($data);
			watch("add course group " . $resource->name, "fa fa-cubes");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function update(Request $request, CourseGroup $resource)
    {
        $validator = validator($request->all(), [
            "name" => "required|unique:course_groups,name,".$request->id,
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
            $resource->update($request->all());
			watch("edit course group " . $resource->name, "fa fa-cubes");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function destroy(CourseGroup $resource)
    {
        try {
			watch("remove course group " . $resource->name, "fa fa-cubes");
            $resource->delete();
            return responseJson(1, __('done'));
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }
}
