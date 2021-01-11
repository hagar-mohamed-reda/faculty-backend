<?php

namespace Modules\Doctor\Entities;

use Illuminate\Database\Eloquent\Model;

class QuestionCategory extends Model {

    protected $table = 'question_category';
    protected $fillable = [
        'name', 'doctor_id', 'faculty_id', 'course_id', 'notes'
    ];
    protected $appends = ['can_delete'];

    public function getCanDeleteAttribute() {
        return true;
    }

    public function course(){
        return $this->belongsTo(Course::class,'course_id');
    }
}
