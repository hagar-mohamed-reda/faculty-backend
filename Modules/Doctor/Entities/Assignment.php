<?php

namespace Modules\Doctor\Entities;

use Illuminate\Database\Eloquent\Model;

class Assignment extends Model
{
    protected $table = 'assignments';
    protected $fillable = [
        'name',
        'description',
        'file',
        'date_from',
        'date_to',
        'degree',
        'doctor_id',
        'course_id',
        'lecture_id',
        'term_id',
        'academic_year_id',
        'faculty_id'
    ];

    protected $appends = ['can_delete'];

    public function getCanDeleteAttribute() {
        return true;
    }
}
