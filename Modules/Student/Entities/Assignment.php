<?php

namespace Modules\Student\Entities;

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

    protected $appends = ['can_delete', 'file_url', 'uploaded', 'student_assignment'];

    public function getCanDeleteAttribute() {
        return true;
    }

    public function getFileUrlAttribute() {
        return ($this->file)? url($this->file) : null;
    }

    public function getStudentAssignmentAttribute() {
        return StudentAssignment::query()
                ->where('assignment_id', $this->id)
                ->where('student_id', optional(request()->user)->id)
                ->first();
    }

    public function getUploadedAttribute() {
        return StudentAssignment::query()
                ->where('assignment_id', $this->id)
                ->where('student_id', optional(request()->user)->id)
                ->exists();
    }

    public function doctor(){
        return $this->belongsTo(Doctor::class, 'doctor_id')->select('id', 'name');
    }

    public function course(){
        return $this->belongsTo(Course::class, 'course_id')->select('id', 'name');
    }

    public function lecture(){
        return $this->belongsTo(Lecture::class, 'lecture_id')->select('id', 'name');
    }

}
