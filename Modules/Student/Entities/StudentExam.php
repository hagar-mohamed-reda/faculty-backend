<?php

namespace Modules\Student\Entities;

use Illuminate\Database\Eloquent\Model;

class StudentExam extends Model {

    protected $table = 'student_exams';
    protected $fillable = [
        'student_id',
        'exam_id',
        'grade',
        'feedback',
        'is_started',
        'is_ended',
        'start_time',
        'end_time',
        'degree_map_id',
        'academic_year_id',
        'term_id',
    ];
    protected $appends = ['can_delete'];

    public function getCanDeleteAttribute() {
        return true;
    }

    public function doctor() {
        return $this->belongsTo(Doctor::class, "doctor_id");
    }

    public function exam() {
        return $this->belongsTo(Exam::class, "exam_id");
    }

    public function details() {
        return $this->hasMany(StudentExamDetail::class, "student_exam_id");
    }

    public function getQuestions() { 
        if ($this->details()->count() <= 0) { 
            $randQuestions = $this->exam->getQuestionsQuery()->get();
            foreach ($randQuestions as $item) {
                StudentExamDetail::create([
                    "question_id" => $item->id,
                    "student_exam_id" => $this->id,
                ]);
            }
        }

        return $this->details()
                ->join('questions', 'questions.id', '=', 'question_id')
                ->select('*', 'student_exam_details.id as id')
                ->orderByRaw("RAND()")
                ->get();
    }

}
