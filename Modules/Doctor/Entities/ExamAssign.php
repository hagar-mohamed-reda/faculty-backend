<?php

namespace Modules\Doctor\Entities;

use Illuminate\Database\Eloquent\Model;

class ExamAssign extends Model
{
    protected $table = 'exam_assign';
    protected $fillable = [
        'student_id',
        'academic_year_id',
        'term_id',
        'exam_id',
        'faculty_id',
    ];

    protected $appends = ['can_delete'];

    public function getCanDeleteAttribute() {
        return true;
    }
}
