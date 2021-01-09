<?php

namespace Modules\Doctor\Entities;

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

    public function course(){
        return $this->belongsTo(Course::class,'course_id');
    }

    public function doctor(){
        return $this->belongsTo(Doctor::class,'doctor_id');
    }

    public function group(){
        return $this->belongsTo(CourseGroup::class,'group_id');
    }
}

