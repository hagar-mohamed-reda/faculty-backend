<?php

namespace Modules\Doctor\Entities;

use Illuminate\Database\Eloquent\Model;

class ExamDetail extends Model
{
    protected $table = 'exam_details';
    protected $fillable = [
        'name',
        'total',
        'question_type_id',
        'question_level_id',
        'exam_id',
        'faculty_id',
    ];

    protected $appends = ['can_delete'];

    public function getCanDeleteAttribute() {
        return true;
    }
}
