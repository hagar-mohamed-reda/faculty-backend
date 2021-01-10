<?php

namespace Modules\Doctor\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Doctor\Entities\Assignment;
use App\AppSetting;
use Auth;
class AssignmentController extends Controller
{

    public function get(Request $request) {
        $query = Assignment::where('doctor_id', $request->user->id)->latest()->get();
        return $query;
    }

    public function store(Request $request) {
        $validator = validator($request->all(), [
            "name" => "required",
            "file" => "required",
            "date_from" => "required",
            "date_to" => "required",
            "course_id" => "required",
            "lecture_id" => "required",
        ]);


        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
            $data = $request->all();
            $data['academic_year_id'] = optional(AppSetting::getCurrentAcademicYear())->id;
            $data['term_id'] = optional(AppSetting::getCurrentTerm())->id;
            $data['doctor_id'] = optional($request->user)->id;

            if (!isset($data['faculty_id'])) {
                $data['faculty_id'] = optional($request->user)->faculty_id;
                //$data['doctor_id'] = optional($request->user)->id;
            }
            $resource = Assignment::create($data);

            // upload code
            if ($request->hasFile('file')) {
                $file = $request->file('file');
                $filename = time() . '.' . $file->getClientOriginalExtension();

                $request['file'] = $filename;

                $destinationPath = public_path('uploads/assignments');
                $file->move($destinationPath, $filename);
                $resouce->file = $filename;
            }


            // end of uplaod code
            $resource->update();
            watch("add assignment " . $resource->name, "fa fa-calender");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function update(Request $request, Assignment $resource) {
        $validator = validator($request->all(), [
            "name" => "required",
            "file" => "required",
            "date_from" => "required",
            "date_to" => "required",
            "course_id" => "required",
            "lecture_id" => "required",
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
            $resource->update($request->all());
            watch("edit assignment " . $resource->name, "fa fa-calender");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function destroy(Assignment $resource) {
        try {
            watch("remove assignment " . $resource->name, "fa fa-calender");
            $resource->delete();
            return responseJson(1, __('done'));
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

}
