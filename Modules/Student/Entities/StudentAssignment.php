<?php

namespace Modules\Student\Entities;

use Illuminate\Database\Eloquent\Model;

class StudentAssignment extends Model
{
    protected $table = 'student_assignments';
    protected $fillable = [
        'file',
        'student_id',
        'assignment_id',
        'faculty_id'
    ];

    protected $appends = ['can_delete'];

    public function getCanDeleteAttribute() {
        return true;
    }
}
