<?php

namespace Modules\Student\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Student\Entities\Exam;
use Modules\Student\Entities\Course;
use Modules\Student\Entities\ExamDetail;
use Modules\Student\Entities\ExamQuestion;
use App\AppSetting;
use Auth;
use DB;

class ExamController extends Controller {

    public function get(Request $request) {

        $coursesIds = DB::table('student_courses')
                        ->where('student_id', $request->user->id)
                        ->pluck('course_id')
                        ->toArray();

        $query = Exam::query();
        $query->whereIn('course_id', $coursesIds);


        if ($request->search)
            $query->where('name', 'like', '%' . $request->search . '%');

        if ($request->search)
            $query->where('header_text', 'like', '%' . $request->search . '%');

        if ($request->search)
            $query->where('footer_text', 'like', '%' . $request->search . '%');

        if ($request->course_id > 0)
            $query->where('course_id', $request->course_id);

        if ($request->type > 0)
            $query->where('type', $request->type);

        return $query->with(['examQuestions', 'examDetails', 'course', 'doctor', 'academicYear', 'term'])
                        ->latest()->paginate(10);
    }

    public function load(Request $request, $resource) {
        $resource = Exam::with(['examQuestions', 'examDetails', 'course', 'doctor', 'academicYear', 'term'])
                ->find($resource);
        $resource->questions = $resource->questions()->with(['questionType', 'questionLevel', 'questionCategory', 'course', 'choices'])->get();
        return $resource;
    } 

}
