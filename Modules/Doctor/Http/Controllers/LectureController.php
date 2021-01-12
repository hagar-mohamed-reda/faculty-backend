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

    public static $FILESIZE = 5000;
    public static $VIDEOSIZE = 10000;
    public static $FILETYPE = "gif,jpg,png,jpeg,pdf,doc,xml,docx,GIF,JPG,PNG,JPEG,PDF,DOC,XML,DOCX,xls,xlsx,txt,ppt,csv";
    public static $VIDEOTYPE = "mp4,3gp,mp3";

    public function get(Request $request) {
        $query = Lecture::where('doctor_id', $request->user->id);

        if ($request->course_id > 0)
            $query->where('course_id', $request->course_id);

        return $query->latest()->get();
    }

    public function load(Request $request,  $resource) {
        return Lecture::find($resource);
    }


    public function store(Request $request) {

        $validator = validator($request->all(), [
            "name" => "required",
            "file1" => "mimes:". self::$FILETYPE,
            "file2" => "mimes:". self::$FILETYPE,
            "active" => "required",
            "date" => "required",
            "course_id" => "required",
            "file1"     => "max:". self::$FILESIZE,
            "file2"     => "max:". self::$FILESIZE,
            "video"     => "max:". self::$VIDEOSIZE . "|mimes:". self::$VIDEOTYPE,
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

            // upload file 1
            uploadImg($request->file("file1"), "/uploads/lessons/", function($filename) use ($resource) {
                $resource->update(["file1" => $filename]);
            }, $resource->file1);

            // upload file2
            uploadImg($request->file("file2"), "/uploads/lessons/", function($filename) use ($resource) {
                $resource->update(["file2" => $filename]);
            }, $resource->file2);

            // upload video
            uploadImg($request->file("video"), "/uploads/lessons/", function($filename) use ($resource) {
                $resource->update(["video" => $filename]);
            }, $resource->video);


            watch("add lecture " . $resource->name, "fa fa-book");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function update(Request $request, Lecture $resource) {

        $validator = validator($request->all(), [
            "name" => "required",
            "file1" => "mimes:". self::$FILETYPE,
            "file2" => "mimes:". self::$FILETYPE,
            "active" => "required",
            "date" => "required",
            "course_id" => "required",
            "file1"     => "max:". self::$FILESIZE,
            "file2"     => "max:". self::$FILESIZE,
            "video"     => "max:". self::$VIDEOSIZE . "|mimes:". self::$VIDEOTYPE,
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
            $data = $request->all();
            if (isset($data['file1']))
                unset($data['file1']);

            if (isset($data['file2']))
                unset($data['file2']);

            if (isset($data['video']))
                unset($data['video']);

            $resource->update($data);


            // upload file 1
            uploadImg($request->file("file1"), "/uploads/lessons/", function($filename) use ($resource) {
                $resource->update(["file1" => $filename]);
            }, $resource->file1);

            // upload file2
            uploadImg($request->file("file2"), "/uploads/lessons/", function($filename) use ($resource) {
                $resource->update(["file2" => $filename]);
            }, $resource->file2);


            // upload video
            uploadImg($request->file("video"), "/uploads/lessons/", function($filename) use ($resource) {
                $resource->update(["video" => $filename]);
            }, $resource->video);


            watch("edit lecture " . $resource->name, "fa fa-book");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function destroy(Lecture $resource) {
        try {
            if (file_exists($resource->file1)) {
                unlink(public_path('uploads/lessons'.$resource->file1));
            }
            if (file_exists($resource->file2)) {
                unlink(public_path('uploads/lessons'.$resource->file2));
            }
            if (file_exists($resource->video)) {
                unlink(public_path('uploads/lessons'.$resource->video));
            }
            watch("remove lecture " . $resource->name, "fa fa-book");
            $resource->delete();
            return responseJson(1, __('done'));
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

}
