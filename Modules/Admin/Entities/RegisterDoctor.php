<?php

namespace Modules\Admin\Entities;

use Illuminate\Database\Eloquent\Model;

class RegisterDoctor extends Model
{
    protected $table = 'course_doctors';
    protected $fillable = [
        'course_id',
        'faculty_id',
        'group_id',
        'doctor_id',
    ];

    protected $appends = ['can_delete'];

    public function getCanDeleteAttribute() {
        return true;
    }
}

