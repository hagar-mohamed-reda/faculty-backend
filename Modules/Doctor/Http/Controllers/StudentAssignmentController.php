<?php

namespace Modules\Doctor\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Doctor\Entities\StudentAssignment;
use Modules\Admin\Entities\Student;
use Modules\Doctor\Entities\RegisterDoctor;
use Modules\Doctor\Entities\Assignment;
use DB;

class StudentAssignmentController extends Controller {

    public function getStdAssignments(Request $request) {
        $studentQuery = Student::query();

        $coursesIds = RegisterDoctor::query()
                        ->where('doctor_id', $request->user->id)
                        ->where('academic_year_id', optional(currentAcademicYear())->id)
                        ->where('term_id', optional(currentTerm())->id)
                        ->pluck('course_id')->toArray();


        if ($request->search)
            $studentQuery->where('name', 'like', '%' . $request->search . '%')
                    ->orWhere('code', 'like', '%' . $request->code . '%');

        if ($request->level_id > 0)
            $studentQuery->where('level_id', $request->level_id);

        if ($request->department_id > 0)
            $studentQuery->where('department_id', $request->department_id);

        $students = $studentQuery
                ->select('id', 'name', 'code', 'level_id', 'department_id', 'photo')
                ->with(['level', 'department'])
                ->latest()->paginate(60);
        
        $assigmentQuery = Assignment::query()
                ->whereIn('course_id', $coursesIds)
                ->where('doctor_id', $request->user->id);

        //return $assigmentQuery->get();

        if ($request->course_id > 0) {
            $assigmentQuery->where('course_id', $request->course_id);
        }

        if ($request->lecture_id > 0) {
            $assigmentQuery->where('lecture_id', $request->lecture_id);
        }
        foreach ($students as $student) { 
            $cloneAssignmentQuery = clone $assigmentQuery;
            $student->assignments = $cloneAssignmentQuery->select(
                            '*',
                            DB::raw('(select file from student_assignments where student_id=' . $student->id . ' and assignment_id=assignments.id ) as student_file'),
                            DB::raw('(select CONCAT("' . url('/') . '", student_assignments.file) from student_assignments where student_id=' . $student->id . ' and assignment_id=assignments.id ) as student_file_url')
                    )->get();
        }
        
        $assignmentCountQuery = clone $assigmentQuery;
        $students->assignments = $assignmentCountQuery->get(['id']);
        return [
            "students" => $students,
            "assignments" => $assignmentCountQuery->get(['name', 'id'])
        ];
    }

}
