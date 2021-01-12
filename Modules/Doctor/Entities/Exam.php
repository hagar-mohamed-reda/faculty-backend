<?php

namespace Modules\Doctor\Entities;

use Illuminate\Database\Eloquent\Model;

class Exam extends Model
{
    protected $table = 'exams';
    protected $fillable = [
        'name',
        'header_text',
        'footer_text',
        'notes',
        'password',
        'start_time',
        'end_time',
        'minutes',
        'question_number',
        'required_password',
        'total',
        'doctor_id',
        'course_id',
        'academic_year_id',
        'term_id',
        'faculty_id',
        'type',
    ];

    protected $appends = ['can_delete'];

    public function getCanDeleteAttribute() {
        return true;
    }

    public function examQuestions(){
        return $this->hasMany(ExamQuestion::class, 'exam_id');
    }
    public function examDetails()
    {
        return $this->hasMany(ExamDetail::class, 'exam_id');
    }

    public function course()
    {
        return $this->belongsTo(Course::class, 'course_id');
    }
    public function doctor()
    {
        return $this->belongsTo(Doctor::class, 'doctor_id');
    }
    public function academicYear()
    {
        return $this->belongsTo(AcademicYear::class, 'academic_year_id');
    }
    public function term()
    {
        return $this->belongsTo(Term::class, 'term_id');
    }
}
