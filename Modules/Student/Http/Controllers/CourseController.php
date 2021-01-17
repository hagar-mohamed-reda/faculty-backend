<?php

namespace Modules\Student\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Student\Entities\Course;
use Modules\Student\Entities\RegisterStudent;
use Auth;

class CourseController extends Controller {

    public function get(Request $request) {
        $studentCourse = RegisterStudent::query()
                ->where('student_id', $request->user->id)
                ->pluck('course_id')->toArray();

        $query = Course::whereIn('id', $studentCourse); 

        if ($request->search)
            $query->where('name', 'like', '%' . $request->search . '%');

        if ($request->level_id > 0)
            $query->where('level_id', $request->level_id);

        return $query->with(['lectures', 'level', 'departments'])->latest()->paginate(10);
    }

    public function load(Request $request, $resource) {
        return Course::with(['lectures', 'level', 'departments'])->find($resource);
    }

}
