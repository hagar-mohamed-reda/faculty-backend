<?php

namespace Modules\Student\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Student\Entities\Lecture;
use App\AppSetting;
use Auth;
use DB;
class LectureController extends Controller
{
    public function get(Request $request) {
        $coursesIds = DB::table('student_courses')
                        ->where('student_id', $request->user->id)
                        ->pluck('course_id')
                        ->toArray();

        $query = Lecture::whereIn('course_id', $coursesIds);

        if ($request->course_id > 0)
            $query->where('course_id', $request->course_id);

        return $query->latest()->get();
    }

    public function load(Request $request,  $resource) {
        return Lecture::find($resource);
    }
}
