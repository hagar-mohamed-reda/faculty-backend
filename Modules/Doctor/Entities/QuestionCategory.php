<?php

namespace Modules\Doctor\Entities;

use Illuminate\Database\Eloquent\Model;

class QuestionCategory extends Model {

    protected $table = 'question_category';
    protected $fillable = [
        'name', 'doctor_id', 'faculty_id', 'course_id'
    ];
    protected $appends = ['can_delete'];

    public function getCanDeleteAttribute() {
        return true;
    }

}
