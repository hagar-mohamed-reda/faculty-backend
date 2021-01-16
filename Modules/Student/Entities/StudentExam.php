<?php

namespace Modules\Student\Entities;

use Illuminate\Database\Eloquent\Model;

class StudentExam extends Model
{
    protected $table = 'student_exams';
    protected $fillable = [
        'student_id',
        'exam_id',
        'grade',
        'feedback',
        'is_start',
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
}
