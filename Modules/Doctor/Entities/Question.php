<?php

namespace Modules\Doctor\Entities;

use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    protected $table = 'questions';

    public static $prefix = "/uploads/questions/";

    protected $fillable = [
        'text',
        'question_type_id',
        'question_level_id',
        'question_category_id',
        'faculty_id',
        'course_id',
        'doctor_id',
        'image',
        'active',
        'is_shared',
        'notes'
    ];

    protected $appends = ['can_delete', 'image_url'];

    public function getCanDeleteAttribute() {
        return true;
    }

    public function getImageUrlAttribute() {
        return ($this->image)? url($this->image) : null;
    }

    public function questionType(){
        return $this->belongsTo(QuestionType::class, 'question_type_id');
    }
    
    public function questionLevel(){
        return $this->belongsTo(QuestionLevel::class, 'question_level_id');
    }
    
    public function questionCategory(){
        return $this->belongsTo(QuestionCategory::class, 'question_category_id');
    }

    public function course(){
        return $this->belongsTo(Course::class, 'course_id');
    }

    public function choices(){
        return $this->hasMany(QuestionChoice::class, 'question_id')->orderByRaw("RAND()");
    }

}

