<?php

namespace Modules\Doctor\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use App\AppSetting;
use Modules\Doctor\Entities\QuestionCategory;
use Auth;


class QuestionCategoryController extends Controller {

    public function get(Request $request) {
        $query = QuestionCategory::where('doctor_id', Auth::user()->id);
         
        if ($request->course_id > 0) 
            $query->where('course_id', $request->course_id);
        
        return $query->latest()->get(); 
    }

    public function store(Request $request) {
        $validator = validator($request->all(), [
            "name" => "required", 
            "course_id" => "required"
        ]); 

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }

        try {
            $data = $request->all(); 
            $data['doctor_id'] = optional($request->user)->id;
            if (!isset($data['faculty_id'])) {
                $data['faculty_id'] = optional($request->user)->faculty_id; 
            }  
            $resource = QuestionCategory::create($data); 
             
            watch("add question category " . $resource->text, "fa fa-th-list");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function update(Request $request, QuestionCategory $resource) {
        $validator = validator($request->all(), [
            "name" => "required", 
            "course_id" => "required"
        ]);


        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }

        try {
            $data = $request->all(); 
            $data['doctor_id'] = optional($request->user)->id;
            if (!isset($data['faculty_id'])) {
                $data['faculty_id'] = optional($request->user)->faculty_id; 
            }  
            $resource->update($data); 
             
            watch("edit question category " . $resource->text, "fa fa-th-list");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function destroy(QuestionCategory $resource) {
        try {
            watch("remove question category " . $resource->text, "fa fa-th-list");
            $resource->delete();
            return responseJson(1, __('done'));
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

}
