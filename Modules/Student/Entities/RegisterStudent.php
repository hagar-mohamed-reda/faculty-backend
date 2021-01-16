<?php

namespace Modules\Student\Entities;

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

    public function course(){
        return $this->belongsTo(Course::class,'course_id');
    }

    public function student(){
        return $this->belongsTo(Student::class,'student_id');
    }

    public function group(){
        return $this->belongsTo(CourseGroup::class,'group_id');
    }
    public function term(){
        return $this->belongsTo(Term::class,'term_id');
    }
    public function academicYear(){
        return $this->belongsTo(AcademicYear::class,'academic_year_id');
    }
}
