<?php

namespace Modules\Student\Entities;

use Illuminate\Database\Eloquent\Model;
use Modules\Doctor\Entities\Question;

class StudentExamDetail extends Model {

    protected $table = 'student_exam_details';
    protected $fillable = [
        'student_exam_id', 'question_id', 'answer_id', 'grade', 'answer', 'total'
    ];
    protected $appends = [
        'question'
    ];

    public function getQuestionAttribute() {
        return Question::with(['questionCategory', 'choices'])->where('id', $this->question_id)->first();
    }

}
