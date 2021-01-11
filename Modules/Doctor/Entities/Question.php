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
    
}

