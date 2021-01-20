<?php

namespace Modules\Doctor\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Doctor\Entities\Exam;
use Modules\Doctor\Entities\Course;
use Modules\Doctor\Entities\ExamDetail;
use Modules\Doctor\Entities\ExamQuestion;
use Modules\Doctor\Entities\ExamAssign;
use Modules\Admin\Entities\Student;
use Modules\Admin\Entities\CourseGroup; 
use Modules\Admin\Entities\RegisterStudent; 
use App\AppSetting;
use Auth;
use DB;

class ExamController extends Controller {

    public function get(Request $request) {

        $query = Exam::query();
        $query->where('doctor_id', $request->user->id);


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
        
        $ids = $resource->studentExams() 
                ->where('academic_year_id', currentAcademicYear()->id)
                ->where('term_id', currentTerm()->id) 
                ->where('faculty_id', optional($request->user)->faculty_id)
                ->pluck('student_id')
                ->toArray();
        
        $resource->students = Student::with(['level', 'department'])->whereIn('id', $ids)->get();
        $resource->questions = $resource->questions()->with(['questionType', 'questionLevel', 'questionCategory', 'course', 'choices'])->get();
        return $resource;
    }

    public function getStudents(Request $request, Exam $resource) {

        $studentsId = DB::table('student_courses')
                        ->where('course_id', $resource->course_id)
                        ->pluck('student_id')
                        ->toArray();
        
        $studentIdsInGroups = RegisterStudent::query()
                ->where('academic_year_id', currentAcademicYear()->id)
                ->where('term_id', currentTerm()->id)
                ->where('group_id', $request->group_id)
                ->where('faculty_id', optional($request->user)->faculty_id)
                ->pluck('student_id')->toArray();

        $query = Student::query()
                        ->whereIn('id',$studentsId)
                        ->with(['level', 'department']);
        
        if ($request->level_id > 0) {
            $query->where('level_id', $request->level_id);
        }
        
        if ($request->department_id > 0) {
            $query->where('department_id', $request->department_id);
        }
        
        if ($request->group_id > 0) {
            $query->whereIn('id', $studentIdsInGroups);
        }
        
        if ($request->search) {
            $query->where('name', 'like', '%'.$request->search.'%')
                    ->orWhere('code', 'like', '%'.$request->search.'%')
                    ->orWhere('phone', 'like', '%'.$request->search.'%');
        }
        
        return $query->paginate(60); 
    }

    public function groups(Request $request, Exam $resource) { 
        return CourseGroup::query()
                ->where('course_id', $resource->course_id)
                ->where('academic_year_id', currentAcademicYear()->id)
                ->where('term_id', currentTerm()->id)
                ->get();
    }

    public function blanks(Request $request, Exam $resource) { 
        $studentExamIds = DB::table('student_exams')->where('exam_id', $resource->id)->pluck('id')->toArray();
        return DB::table('student_exam_details')
                ->whereIn('student_exam_id', $studentExamIds)
                ->select('*', DB::raw('(select name from questions where questions.id = question_id) as question'))
                ->orderBy('grade', 'ASC')
                ->paginate(100); 
    }



    public function store(Request $request) {
        $validator = validator($request->all(), [
            'name' => 'required',
            'start_time' => 'required',
            'end_time' => 'required',
            'minutes' => 'required',
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
            // init varaibles
            $data = $request->all();
            // add academic year and term and doctor id
            $data['academic_year_id'] = optional(AppSetting::getCurrentAcademicYear())->id;
            $data['term_id'] = optional(AppSetting::getCurrentTerm())->id;
            $data['doctor_id'] = optional($request->user)->id;

            $details = json_decode($request->exam_details, true);
            $questions = json_decode($request->selected_questions, true);

            // add faculty id
            if (!isset($data['faculty_id']))
                $data['faculty_id'] = optional($request->user)->faculty_id;


            // start transaction
            DB::beginTransaction();

            // create exam object
            $resource = Exam::create($data);

            // add exam details
            foreach ($details as $detail) {
                $detail['exam_id'] = $resource->id;
                $detail['faculty_id'] = $resource->faculty_id;
                ExamDetail::create($detail);
            }

            // add exam questions
            foreach ($questions as $questionId) {
                ExamQuestion::create([
                    "exam_id" => $resource->id,
                    "question_id" => $questionId
                ]);
            }

            // commit changes
            DB::commit();

            watch("add Exam " . $resource->name, "fa fa-newspaper-o");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function update(Request $request, Exam $resource) {
        $validator = validator($request->all(), [
            'name' => 'required',
            'start_time' => 'required',
            'end_time' => 'required',
            'minutes' => 'required',
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
            // init varaibles
            $data = $request->all();

            // add academic year and term and doctor id
            $data['academic_year_id'] = optional(AppSetting::getCurrentAcademicYear())->id;
            $data['term_id'] = optional(AppSetting::getCurrentTerm())->id;
            $data['doctor_id'] = optional($request->user)->id;

            $details = json_decode($request->exam_details, true);
            $questions = json_decode($request->selected_questions, true);

            // add faculty id
            if (!isset($data['faculty_id']))
                $data['faculty_id'] = optional($request->user)->faculty_id;


            // start transaction
            DB::beginTransaction();

            // update exam object
            $resource->update($data);

            // remove old exam details
            $resource->examDetails()->delete();

            // add new exam details
            foreach ($details as $detail) {
                $detail['exam_id'] = $resource->id;
                $detail['faculty_id'] = $resource->faculty_id;
                ExamDetail::create($detail);
            }

            // remove old exam questions
            $resource->examQuestions()->delete();

            // add exam questions
            foreach ($questions as $questionId) {
                ExamQuestion::create([
                    "exam_id" => $resource->id,
                    "question_id" => $questionId
                ]);
            }

            // commit changes
            DB::commit();

            watch("edit Exam " . $resource->name, "fa fa-newspaper-o");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function assign(Request $request, Exam $resource) {
         
        try {
            // remove old students 
            $resource->studentExams()->delete();
            
            foreach($request->students as $std) {
                ExamAssign::create([
                    "exam_id" => $resource->id,
                    "student_id" => $std,
                    "academic_year_id" => optional(currentAcademicYear())->id,
                    "term_id" => optional(currentTerm())->id,
                    "faculty_id" => optional($request->user)->faculty_id
                ]);
            }
 

            watch("assign students to Exam " . $resource->name, "fa fa-newspaper-o");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function destroy(Exam $resource) {
        try {
            // remove old exam details
            $resource->examDetails()->delete();

            // remove old exam questions
            $resource->examQuestions()->delete();

            watch("remove Exam " . $resource->name, "fa fa-newspaper-o");
            $resource->delete();
            return responseJson(1, __('done'));
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

}
