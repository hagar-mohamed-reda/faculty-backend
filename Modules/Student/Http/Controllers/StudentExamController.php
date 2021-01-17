<?php

namespace Modules\Student\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Student\Entities\StudentExam;
use App\AppSetting;
use Auth;
use DB;
class StudentExamController extends Controller
{
    public function get(Request $request) {

        $query = StudentExam::query();
        $query->where('student_id', $request->user->id);

        if ($request->search)
            $query->where('feedback', 'like', '%' . $request->search . '%');

        if ($request->exam_id > 0)
            $query->where('exam_id', $request->exam_id);

        if ($request->is_start > 0)
            $query->where('is_start', $request->is_start);

        if ($request->is_ended > 0)
            $query->where('is_ended', $request->is_ended);


        return $query->latest()->paginate(10);
    }

    public function load(Request $request, $resource) {
        $resource = StudentExam::find($resource);
        return $resource;
    }
}
