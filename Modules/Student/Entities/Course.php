<?php

namespace Modules\Student\Entities;

use Illuminate\Database\Eloquent\Model;
use \Illuminate\Database\Eloquent\SoftDeletes;

class Course extends Model
{
    use SoftDeletes;

    protected $table = 'courses';
    protected $fillable = [
        'name',
        'photo',
        'level_id',
        'faculty_id',
        'code',
        'credit_hour',
        'description',
        'final_degree',
        'active',
    ];

    protected $appends = ['can_delete', 'register_student_count', 'department_count', 'photo_url'];

    public function getPhotoUrlAttribute() {
        return $this->photo? url($this->photo) : null;
    }
    
    public function getCanDeleteAttribute() {
        return true;
    }
    public function getDepartmentCountAttribute() {
        return $this->departments()->count();
    }

    public function getRegisterStudentCountAttribute() {
        return $this->registerStudent()->count();
    }
 

    public function level(){
        return $this->belongsTo(Level::class, 'level_id');
    }


    public function faculty(){
        return $this->belongsTo(Faculty::class, 'faculty_id');
    }

    public function departments(){
        return $this->hasMany(CourseDepartment::class, 'division_id');
    }

    public function lectures(){
        return $this->hasMany(Lecture::class, 'course_id');
    }

    public function registerStudent(){
        return $this->hasMany(RegisterStudent::class, 'course_id');
    }
    
}
