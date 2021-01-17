<?php

namespace Modules\Student\Entities;

use Illuminate\Database\Eloquent\Model;

class CourseGroup extends Model
{
    protected $table = 'course_groups';
    protected $fillable = [
        'name',
        'course_id',
        'academic_year_id',
        'term_id',
        'faculty_id'
    ];

    protected $appends = ['can_delete'];

    public function getCanDeleteAttribute() {
        return true;
    }

    public function course(){
        return $this->belongsTo(Course::class,'course_id');
    }
    public function academicYear(){
        return $this->belongsTo(AcademicYear::class,'academic_year_id');
    }
    public function term(){
        return $this->belongsTo(Term::class,'course_id');
    }

}
