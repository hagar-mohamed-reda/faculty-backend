<?php

namespace Modules\Student\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Doctor\Entities\StudentAssignment;
use App\AppSetting;
use Auth;
class StudentAssignmentController extends Controller
{
    public static $FILESIZE = 5000;
    public static $FILETYPE = "gif,jpg,png,jpeg,pdf,doc,xml,docx,GIF,JPG,PNG,JPEG,PDF,DOC,XML,DOCX,xls,xlsx,txt,ppt,csv";

    public function update(Request $request) {

        $validator = validator($request->all(), [
            "file"  => "required|max:". self::$FILESIZE . "|mimes:". self::$FILETYPE,
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }

        try {
            $data = $request->all();
            $data['student_id'] = optional($request->user)->id;
            if (!isset($data['faculty_id'])) {
                $data['faculty_id'] = optional($request->user)->faculty_id;
            }

            if (isset($data['file'])) {
                unset($data['file']);
            }

            // select resource
            $resource = StudentAssignment::query()
                ->where('student_id', $request->user->id)
                ->where('assigment_id', $request->assigment_id)
                ->first();

            // create resource if not exist
            if (!$resource)  {
                $resource = StudentAssigment::create($data);
            } else {
                // update resource if exists
                $resource->update($data);
            }

            // upload file
            uploadImg($request->file("file"), "/uploads/answers/", function($filename) use ($resource) {
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
