<?php

namespace Modules\Doctor\Entities;

use Illuminate\Database\Eloquent\Model;

class StudentAssignment extends Model {

    protected $table = "student_assignments";
    protected $fillable = [
        'file', 'student_id', 'assignment_id', 'faculty_id', 'student_grade'
    ];

}
