<?php

namespace Modules\Admin\Entities;

use Illuminate\Database\Eloquent\Model;
use \Illuminate\Database\Eloquent\SoftDeletes;
use DB;

class Student extends Model
{
    use SoftDeletes;

    public static $prefix = "/uploads/students/";
    
    protected $table = 'students';
    protected $fillable = [
        'name',
        'photo',
        'username',
        'password',
        'level_id',
        'department_id',
        'division_id',
        'faculty_id',
        'code',
        'phone',
        'email',
        'national_id',
        'active',
        'sms_code',
        'type',
    ];

    protected $appends = ['can_delete', 'photo_url', 'is_register', 'group_id'];

    public function getCanDeleteAttribute() {
        return true;
    }

    public function getIsRegisterAttribute() {
        return DB::table('student_courses')
                ->where('course_id', request()->course_id)
                ->where('student_id', $this->id)
                ->where('academic_year_id', optional(currentAcademicYear())->id)
                ->where('term_id', optional(currentTerm())->id)
                ->exists();
    }

    public function getGroupIdAttribute() {
        return optional(DB::table('student_courses')
                ->where('course_id', request()->course_id)
                ->where('student_id', $this->id)
                ->where('academic_year_id', optional(currentAcademicYear())->id)
                ->where('term_id', optional(currentTerm())->id)
                ->first())->group_id;
    }

    public function getPhotoUrlAttribute() {
        return $this->photo? url($this->photo) : null;
    }

    public function level(){
        return $this->belongsTo(Level::class, 'level_id');
    }

    public function division(){
        return $this->belongsTo(Division::class, 'division_id');
    }

    public function department(){
        return $this->belongsTo(Department::class, 'department_id');
    }
}
