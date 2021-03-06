<?php

namespace Modules\Admin\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Admin\Entities\RegisterStudent;
use Maatwebsite\Excel\Facades\Excel;
use Modules\Admin\http\Imports\RegisterStudentsImport;
use DB;

class RegisterStudentController extends Controller {

    public function get(Request $request) {
        $query = RegisterStudent::latest()->get();
        return $query;
    }

    public function register(Request $request) {
        $validator = validator($request->all(), [
            "course_id" => "required",
            "student_id" => "required",
            "group_id" => "required",
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
            $data = $request->all(); 
            $data['academic_year_id'] = optional(currentAcademicYear())->id;
            $data['term_id'] = optional(currentTerm())->id;
            if (!isset($data['faculty_id'])) {
                $data['faculty_id'] = optional($request->user)->faculty_id;
            }
            $registered = false;
            $resource = RegisterStudent::query()
                    ->where('student_id', $request->student_id)
                    ->where('course_id', $request->course_id)
                    ->where('academic_year_id', optional(currentAcademicYear())->id)
                    ->where('term_id', optional(currentTerm())->id)
                    ->first();
            
            if (!$resource) {
                $resource = RegisterStudent::create($data);
                $registered = true;
            }
            else  {
                $resource->delete();
                $registered = false;
            }
            
            watch("add Register Student ", "fa fa-registered");
            return responseJson(1, __('done'), $registered);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function import() {
        Excel::import(new RegisterStudentsImport, request()->file('file'));

        return responseJson(1, __('done'));
    }

    public function getImportTemplateFile() {
        return response()->download('uploads/excel/student_register_file.xlsx');
    }

}
