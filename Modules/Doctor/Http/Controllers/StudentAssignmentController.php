<?php

namespace Modules\Doctor\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use DB;
class StudentAssignmentController extends Controller
{
    public function getStdAssignments(Request $request){
        $stdAssigns = DB::table('student_assignments')
                    ->Join('students', 'students.id', '=', 'student_assignments.student_id');

        $students = DB::table('students');

        if ($request->search)
            $students->where('name', 'like', '%' . $request->search . '%');

        if ($request->student_id > 0)
            $students->where('id', $request->student_id);

        if ($request->level_id > 0)
            $students->where('level_id', $request->level_id);

        if ($request->department_id > 0)
            $students->where('department_id', $request->department_id);


        /*$students->leftJoin('student_assignments', 'students.id', '=', 'student_assignments.student_id')
                ->unionAll($students)
                ->latest()->paginate(60);*/

        return $students->latest()->paginate(60);
    }
}
