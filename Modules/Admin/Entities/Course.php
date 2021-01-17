<?php

namespace Modules\Admin\Entities;

use Illuminate\Database\Eloquent\Model;
use \Illuminate\Database\Eloquent\SoftDeletes;

class Course extends Model
{
    use SoftDeletes;

    public static $prefix = "/uploads/courses/";
    
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

    protected $appends = ['can_delete', 'register_student_count', 'register_doctor_count', 'department_count', 'photo_url'];

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

    public function getRegisterDoctorCountAttribute() {
        return $this->registerDoctor()->count();
    }

    public function level(){
        return $this->belongsTo(Level::class, 'level_id');
    }


    public function faculty(){
        return $this->belongsTo(Faculty::class, 'faculty_id');
    }

    public function departments(){
        return $this->hasMany(CourseDepartment::class, 'course_id');
    }

    public function groups(){
        return $this->hasMany(CourseGroup::class, 'course_id');
    }

    public function registerStudent(){
        return $this->hasMany(RegisterStudent::class, 'course_id');
    }
    public function registerDoctor(){
        return $this->hasMany(RegisterDoctor::class, 'course_id');
    }

    public function students(){
        return $this->registerStudent()
                ->join('students', 'students.id', '=', 'student_id')
                ->select('*')
                ->selectRaw('(select name from levels where levels.id = level_id) as level')
                ->selectRaw('(select name from departments where departments.id = department_id) as department')
                ->selectRaw('(select name from course_groups where course_groups.id = group_id) as group_name');
    }

    public function doctors(){
        return $this->registerDoctor()
                ->join('doctors', 'doctors.id', '=', 'doctor_id')
                ->select('*')
                ->selectRaw('(select name from specializations where specializations.id = special_id) as special') 
                ->selectRaw('(select name from divisions where divisions.id = division_id) as division')
                ->selectRaw('(select name from course_groups where course_groups.id = group_id) as group_name');
    }
}
