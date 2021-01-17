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

    protected $appends = ['can_delete', 'file_url'];

    public function getCanDeleteAttribute() {
        return true;
    }
    
    public function getFileUrlAttribute() {
        return ($this->file)? url($this->file) : null;
    }
    
}
