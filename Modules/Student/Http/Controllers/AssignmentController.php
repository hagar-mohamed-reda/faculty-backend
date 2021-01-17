<?php

namespace Modules\Student\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Student\Entities\Assignment;
use App\AppSetting;
use Auth;
use DB;
class AssignmentController extends Controller
{
    public function get(Request $request) {
        $coursesIds = DB::table('student_courses')
                        ->where('student_id', $request->user->id)
                        ->pluck('course_id')
                        ->toArray();
       
        $query = Assignment::query()
                ->whereIn('course_id', $coursesIds)
                ->whereDate('date_from', '<=', date('Y-m-d'))
                ->whereDate('date_to', '>=', date('Y-m-d'));

        if ($request->search) {
            $query->where('name', 'like', '%'.$request->search.'%')
                    ->orWhere('description', 'like', '%'.$request->search.'%')
                    ->orWhere('degree', 'like', '%'.$request->search.'%');
        }
        
        if ($request->course_id > 0)
            $query->where('course_id', $request->course_id);

        if ($request->lecture_id > 0)
            $query->where('lecture_id', $request->lecture_id);

        return $query->with(['lecture', 'course', 'doctor'])->latest()->paginate(60);
    }

    public function load(Request $request,  $resource) {
        return Assignment::find($resource);
    }
}
