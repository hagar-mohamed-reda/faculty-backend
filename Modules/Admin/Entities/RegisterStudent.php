<?php

namespace Modules\Admin\Entities;

use Illuminate\Database\Eloquent\Model;

class RegisterStudent extends Model
{
    protected $table = 'student_courses';
    protected $fillable = [
        'course_id',
        'student_id',
        'faculty_id',
        'group_id',
        'academic_year_id',
        'term_id',
    ];

    protected $appends = ['can_delete'];

    public function getCanDeleteAttribute() {
        return true;
    }
}
