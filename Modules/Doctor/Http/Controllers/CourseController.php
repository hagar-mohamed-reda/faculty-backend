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
        $doctorCourse =  RegisterDoctor::query()
                ->where('doctor_id', $request->user->id)
                ->where('academic_year_id', optional(currentAcademicYear())->id)
                ->where('term_id', optional(currentTerm())->id)
                ->pluck('course_id')->toArray();

        $query = Course::query();

        $query->whereIn('id', $doctorCourse);

        if ($request->search)
            $query->where('name', 'like', '%'. $request->search . '%');

        if ($request->level_id > 0)
            $query->where('level_id', $request->level_id);

        return $query->with(['level', 'faculty', 'departments'])->latest()->paginate(10);
    }
    
    public function load(Request $request,  $resource) {
        return Course::with(['lectures', 'level'])->find($resource);
    }

}
