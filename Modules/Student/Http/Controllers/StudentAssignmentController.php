<?php

namespace Modules\Student\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Student\Entities\StudentAssignment;
use App\AppSetting;
use Auth;

class StudentAssignmentController extends Controller
{
    public static $FILESIZE = 5000;
    public static $FILETYPE = "gif,jpg,png,jpeg,pdf,doc,xml,docx,GIF,JPG,PNG,JPEG,PDF,DOC,XML,DOCX,xls,xlsx,txt,ppt,csv";

    public function update(Request $request) {

        $validator = validator($request->all(), [
            "student_file"  => "required|max:". self::$FILESIZE . "|mimes:". self::$FILETYPE,
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->first(), "");
        }

        try {
            $data = $request->all();
            $data['student_id'] = optional($request->user)->id;
            if (!isset($data['faculty_id'])) {
                $data['faculty_id'] = optional($request->user)->faculty_id;
            }

            //delete file from storage
            if (isset($data['student_file'])) {
                unset($data['student_file']);
            }

            // select resource
            $resource = StudentAssignment::query()
                ->where('student_id', $request->user->id)
                ->where('assignment_id', $request->assignment_id)
                ->first();

            // create resource if not exist
            if (!$resource)  {
                $resource = StudentAssignment::create($data);
            } else {
                // update resource if exists
                $resource->update($data);
            }

            // upload file
            uploadImg($request->file("student_file"), "/uploads/answers/", function($filename) use ($resource) {
                $resource->update(["file" => $filename]);
            }, $resource->file);

            // watch user event
            watch("edit answer " . $resource->name, "fa fa-calender");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }
}
