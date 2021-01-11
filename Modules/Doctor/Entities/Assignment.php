<?php

namespace Modules\Doctor\Entities;

use Illuminate\Database\Eloquent\Model;

class Assignment extends Model
{
    protected $table = 'assignments';
    protected $fillable = [
        'name',
        'description',
        'file',
        'date_from',
        'date_to',
        'degree',
        'doctor_id',
        'course_id',
        'lecture_id',
        'term_id',
        'academic_year_id',
        'faculty_id'
    ];

    protected $appends = ['can_delete', 'file_url', 'uploads'];

    public function getCanDeleteAttribute() {
        return true;
    }
    
    public function getFileUrlAttribute() { 
        return ($this->file)? url($this->file) : null;
    }
    
    public function getUploadsAttribute() { 
        return 0;
    }

    public function doctor(){
        return $this->belongsTo(Doctor::class, 'doctor_id');
    }

    public function course(){
        return $this->belongsTo(Course::class, 'course_id');
    }

    public function lecture(){
        return $this->belongsTo(Lecture::class, 'lecture_id');
    }
 
}
