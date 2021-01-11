<?php

namespace Modules\Doctor\Entities;

use Illuminate\Database\Eloquent\Model;

class QuestionChoice extends Model
{
    protected $table = 'question_choices';
     
    protected $fillable = [
        'text',
        'question_id', 
        'is_answer', 
        'faculty_id',	 
    ];

    protected $appends = ['can_delete'];

    public function getCanDeleteAttribute() {
        return true;
    }
}

