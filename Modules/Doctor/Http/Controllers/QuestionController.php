<?php

namespace Modules\Doctor\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use App\AppSetting;
use Modules\Doctor\Entities\Question;
use Auth;

class QuestionController extends Controller {

    public function get(Request $request) {
        $query = Question::where('doctor_id', Auth::user()->id)->latest()->get();
        return $query;
    }

    public function store(Request $request) {
        $validator = validator($request->all(), [
            "question_type_id" => "required",
            "question_level_id" => "required",
            "question_category_id" => "required",
            "course_id" => "required"
        ]);


        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }

        if ($request->hasFile('file1')) {
            $file1 = $request->file('file1');
            $file1name = time() . '.' . $file1->getClientOriginalExtension();

            $request['file1'] = $file1name;

            $destinationPath = public_path('uploads/lessons');
            $file1->move($destinationPath, $file1name);
        }

        try {
            $data = $request->all();
            $data['academic_year_id'] = optional(AppSetting::getCurrentAcademicYear())->id;
            $data['term_id'] = optional(AppSetting::getCurrentTerm())->id;

            if (!isset($data['faculty_id'])) {
                $data['faculty_id'] = optional($request->user)->faculty_id; 
            }  
            $resource = Question::create($data);
            watch("add lecture " . $resource->name, "fa fa-book");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function update(Request $request, Question $resource) {
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

    public function destroy(Question $resource) {
        try {
            watch("remove lecture " . $resource->name, "fa fa-book");
            $resource->delete();
            return responseJson(1, __('done'));
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

}
