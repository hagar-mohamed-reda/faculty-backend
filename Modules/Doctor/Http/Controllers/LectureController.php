<?php

namespace Modules\Doctor\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Doctor\Entities\Lecture;
use App\AppSetting;
use Auth;

class LectureController extends Controller
{

    public function get(Request $request) {
        $query = Lecture::where('doctor_id', Auth::user()->id);
        
        if ($request->course_id > 0)
            $query->where('course_id', $request->course_id);
        
        return $query->latest()->get(); 
    }

    public function store(Request $request) {
        $validator = validator($request->all(), [
            "name" => "required",
            "file1" => "required",
            "active" => "required",
            "date" => "required",
            "course_id" => "required",
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
            $resource = Lecture::create($data);

            // upload code

            if ($request->hasFile('file1')) {
                $file1 = $request->file('file1');
                $file1name = time() . '.' . $file1->getClientOriginalExtension();

                $request['file1'] = $file1name;

                $destinationPath = public_path('uploads/lessons');
                $file1->move($destinationPath, $file1name);
                $resouce->file1 = $file1name;
            }

            if ($request->hasFile('file2')) {
                $file2 = $request->file('file2');
                $file2name = time() . '.' . $file2->getClientOriginalExtension();
                $request['file2'] = $file2name;

                $destinationPath = public_path('uploads/lessons');
                $file2->move($destinationPath, $file2name);
                $resouce->file2 = $file2name;

            }

            if ($request->hasFile('video')) {
                $video = $request->file('video');
                $videoname = time() . '.' . $video->getClientOriginalExtension();

                $request['video'] = $videoname;

                $destinationPath = public_path('uploads/lessons');
                $video->move($destinationPath, $videoname);
                $resouce->video = $videoname;

            }

            // end of uplaod code
            $resource->update();
            watch("add lecture " . $resource->name, "fa fa-book");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function update(Request $request, Lecture $resource) {
        $validator = validator($request->all(), [
            "name" => "required",
            "file1" => "required",
            "active" => "required",
            "date" => "required",
            "course_id" => "required",
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
            $resource->update($request->all());
            watch("edit lecture " . $resource->name, "fa fa-book");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function destroy(Lecture $resource) {
        try {
            watch("remove lecture " . $resource->name, "fa fa-book");
            $resource->delete();
            return responseJson(1, __('done'));
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

}
