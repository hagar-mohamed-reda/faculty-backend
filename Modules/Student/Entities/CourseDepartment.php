<?php

namespace Modules\Student\Entities;

use Illuminate\Database\Eloquent\Model;
use \Illuminate\Database\Eloquent\SoftDeletes;

class CourseDepartment extends Model
{

    protected $table = 'course_departments';
    protected $fillable = [
        'course_id',
        'faculty_id',
        'division_id',
    ];

    protected $appends = ['can_delete'];

    public function getCanDeleteAttribute() {
        return true;
    }

    public function course(){
        return $this->belongsTo(Course::class,'course_id');
    }
}
