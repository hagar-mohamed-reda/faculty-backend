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
    public static $FILESIZE = 5000;
    public static $FILETYPE = "gif,jpg,png,jpeg,pdf,doc,xml,docx,GIF,JPG,PNG,JPEG,PDF,DOC,XML,DOCX,xls,xlsx,txt,ppt,csv";

    public function get(Request $request) {
        $query = Assignment::with(['course', 'lecture', 'doctor'])->where('doctor_id', $request->user->id);
        
        if ($request->search) {
            $query->where('name', 'like', '%'.$request->search.'%')
                    ->orWhere('description', 'like', '%'.$request->search.'%')
                    ->orWhere('degree', 'like', '%'.$request->search.'%');
        }
        
        if ($request->course_id > 0)
            $query->where('course_id', $request->course_id);
        
        if ($request->lecture_id > 0)
            $query->where('lecture_id', $request->lecture_id);
        
        return $query->latest()->paginate(60); 
    }

    public function store(Request $request) {
        $validator = validator($request->all(), [
            "name" => "required",
            "file" => "required",
            "date_from" => "required",
            "date_to" => "required",
            "course_id" => "required",
            "lecture_id" => "required",
            "file"      => "max:". self::$FILESIZE . "|mimes:". self::$FILETYPE,
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

            // upload file
            uploadImg($request->file("file"), "uploads/assigments/", function($filename) use ($resource) {
                $resource->update(["file" => $filename]);
            }, $resource->file);

            watch("add assignment " . $resource->name, "fa fa-calender");
            return responseJson(1, __('done'), $resource);
        } catch (Exception $th) {
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
            "file"      => "max:". self::$FILESIZE . "|mimes:". self::$FILETYPE,
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
            $data = $request->all();
            if (isset($data['file']))
                unset($data['file']);

            $resource->update($data);
            // upload file
            uploadImg($request->file("file"), "/uploads/assigments/", function($filename) use ($resource) {
                $resource->update(["file" => $filename]);
            }, $resource->file);

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
