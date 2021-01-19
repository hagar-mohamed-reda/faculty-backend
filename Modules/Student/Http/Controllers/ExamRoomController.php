<?php

namespace Modules\Student\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Student\Entities\Exam;
use Modules\Student\Entities\Course;
use Modules\Student\Entities\ExamDetail;
use Modules\Student\Entities\StudentExam;
use Modules\Student\Entities\RegisterStudent;
use Modules\Student\Entities\ExamQuestion;
use Modules\Student\Entities\ExamAssign;
use Modules\Doctor\Entities\Question;
use Modules\Student\Entities\StudentExamDetail;
use App\AppSetting;
use Auth;
use DB;

class ExamRoomController extends Controller {

    /**
     * get exam query 
     * available exams
     * 
     * @return type
     */
    public function getExamQuerys(Request $request) {
        // set timezone
        date_default_timezone_set('Africa/Cairo');
        
        // init current date time
        $datetime = date("Y-m-d H:i:s");
        
        // get student exams ids
        $studentExamIds = StudentExam::where('student_id', $request->user->id)->where('is_ended', '1')->pluck('exam_id')->toArray();
        
        // get student courses ids
        $registerCourseIds = RegisterStudent::where('academic_year_id', optional(currentAcademicYear())->id)->where('term_id', optional(currentTerm())->id)->where('student_id', $request->user->id)->pluck('course_id')->toArray();
        
        // get student exam assign ids
        $studentAssignIds = ExamAssign::where('academic_year_id', optional(currentAcademicYear())->id)->where('term_id', optional(currentTerm())->id)->where('student_id', $request->user->id)->pluck('exam_id')->toArray();
         
        // exam query
        $examQuery = Exam::query()
                ->whereIn('course_id', $registerCourseIds)
                ->whereIn('id', $studentAssignIds)
                ->whereNotIn('id', $studentExamIds)
                ->where('start_time', '<=', $datetime)
                ->where('end_time', '>=', $datetime);
        
        return $examQuery;
    }
    
    /**
     * get exams 
     * @param Request $request
     * @return type
     */
    public function get(Request $request) { 
        return $this->getExamQuerys($request)->with(['doctor', 'course'])->latest()->paginate(60);
    }
 
    /**
     * load one exam
     * @param Request $request
     * @param type $resource
     * @return type
     */
    public function load(Request $request, $resource) {
        // set timezone
        date_default_timezone_set('Africa/Cairo');
        
        // exam 
        //$exam = $this->getExamQuerys($request)->where('id', $resource)->first();
        $exam = Exam::find($resource);
        
        // init current date time
        $datetime = date('Y-m-d H:i:s');
        
        if (!$exam)
            return [];
        
        $studentExam = StudentExam::query()
                ->where('exam_id', $exam->id)
                ->where('student_id', $request->user->id)
                ->first();
         
        // if exam not exist create once
        if (!$studentExam) {
            $studentExam = StudentExam::create([
                "student_id" => $request->user->id,
                "exam_id" => $exam->id,
                "is_started" => '1',
                "start_time" => $datetime,
                "end_time" => $datetime,
                "academic_year_id" => optional(currentAcademicYear())->id,
                "term_id" => optional(currentTerm())->id,
            ]);
        } else {
        // if exists update it 
            $studentExam->update([
                "end_time" => $datetime
            ]);
        }
        
        // assign questions
        $studentExam->questions = $studentExam->getQuestions();
        
        // remaining minutes
        $remainingTime = (strtotime($studentExam->end_time) - strtotime($studentExam->start_time)) / (60*60);
        
        $studentExam->exam = $studentExam->exam;
        $studentExam->remaining_minutes = ((int)$remainingTime);
        
        
        // check on if there is available time
        if ($remainingTime >= $exam->minutes)
            return responseJson (0, __('time is out'));
        else
            return responseJson (1, __('done'), $studentExam);
    }

    public function store(Request $request) {
        try {
            $data = $request->all();  
            $studentId = $request->user->id;
            $exam = Exam::find($request->exam_id);
            $studentExam = StudentExam::find($request->student_exam_id);
            
            if ($studentExam->is_ended)
                return responseJson (0, __("exam ended"));

            // delete old 
            $studentExam->details()->delete();
              
            // add new
            $totalGrade = 0;
            foreach ($request->questions as $q) { 
                $question = Question::find($q['question_id']);
                $studentAnswer = StudentExamDetail::find($q['student_detail_id']);
                $grade = 0;
                 
                if (str_replace(" ", "", $q['answer']) == str_replace(" ", "", $question->answer)) {
                    $grade = $question->getDegree($exam); 
                }
                
                if ($question->question_type_id == 4) {
                    $grade = 0;
                }
                
                $totalGrade += $grade;
                StudentExamDetail::create([
                    "student_exam_id" => $studentExam->id,
                    "question_id" => $q['question_id'],
                    "grade" => $grade,
                    "answer" => $q['answer'],
                    "answer_id" => null
                ]);
            }

            $studentExam->update([
                "is_ended" => 1,
                "grade" => $totalGrade,
                "end_time" => date('Y-m-d H:i:s'),
            ]);


            watch(__('finish the exam ') . " " . $exam->name, "fa fa-newspaper-o");
            return responseJson(1, __('done'));
        } catch (Exception $ex) {
            return responseJson(0, $ex->getMessage()); 
        }
    }
}
