<?php

namespace Modules\Doctor\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Doctor\Entities\Course;
use Modules\Doctor\Entities\RegisterDoctor;
use Auth;
class CourseController extends Controller
{
    public function get(Request $request){
        $doctorCourse = [];
        $doctorCourse =  RegisterDoctor::where('doctor_id', Auth::user()->id)->pluck('course_id')->toArray();

        $query = Course::query();

        $query->where(function($q) use ($doctorCourse){
            $q->whereIn('id', $doctorCourse);
        });

        if ($request->search)
            $query->where('name', 'like', '%'. $request->search . '%');

        if ($request->level_id > 0)
            $query->where('level_id', $request->level_id);

        return $query->with(['level', 'faculty', 'departments'])->latest()->paginate(10);
    }
}
