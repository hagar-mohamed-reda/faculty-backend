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
    public static $FILETYPE = ['gif','jpg','png','jpeg','pdf','doc','xml','docx','GIF','JPG','PNG','JPEG','PDF','DOC','XML','DOCX','xls','xlsx','txt','ppt','csv'];
    public static $VIDEOTYPE = ['mp4','3gp','mp3'];

    public function get(Request $request) {
        $query = Lecture::where('doctor_id', Auth::user()->id);

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
            "video"     => "max:". self::$VIDEOSIZE . "mimes:". self::$VIDEOTYPE,
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

                //$request['file1'] = $file1name;

                $destinationPath = public_path('uploads/lessons');
                $file1->move($destinationPath, $file1name);
                $resouce->file1 = $file1name;
            }

            if ($request->hasFile('file2')) {
                $file2 = $request->file('file2');
                $file2name = time() . '.' . $file2->getClientOriginalExtension();
                //$request['file2'] = $file2name;

                $destinationPath = public_path('uploads/lessons');
                $file2->move($destinationPath, $file2name);
                $resouce->file2 = $file2name;

            }

            if ($request->hasFile('video')) {
                $video = $request->file('video');
                $videoname = time() . '.' . $video->getClientOriginalExtension();

                //$request['video'] = $videoname;

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
            "file1" => "mimes:". self::$FILETYPE,
            "file2" => "mimes:". self::$FILETYPE,
            "active" => "required",
            "date" => "required",
            "course_id" => "required",
            "file1"     => "max:". self::$FILESIZE,
            "file2"     => "max:". self::$FILESIZE,
            "video"     => "max:". self::$VIDEOSIZE . "mimes:". self::$VIDEOTYPE,
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
