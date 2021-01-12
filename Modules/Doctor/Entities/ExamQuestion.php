<?php

namespace Modules\Doctor\Entities;

use Illuminate\Database\Eloquent\Model;

class ExamQuestion extends Model
{
    protected $table = 'exam_questions';
    protected $fillable = [
        'exam_id',
        'question_id',
        'result_publish',
    ];

    protected $appends = ['can_delete'];

    public function getCanDeleteAttribute() {
        return true;
    }
}
