<?php

namespace Modules\Doctor\Entities;

use Illuminate\Database\Eloquent\Model;

class Lecture extends Model
{
    protected $table = 'lectures';
    protected $fillable = [
        'name',
        'description',
        'file1',
        'file2',
        'video',
        'youtube_url',
        'active',
        'date',
        'doctor_id',
        'course_id',
        'term_id',
        'academic_year_id',
        'faculty_id'
    ];

    protected $appends = ['can_delete', 'file1_url', 'file2_url', 'video_url'];

    public function getCanDeleteAttribute() {
        return true;
    }
    
    public function getFile1UrlAttribute() {
        return url($this->file1);
    }
    
    public function getFile2UrlAttribute() {
        return url($this->file2);
    }
    
    public function getVideoUrlAttribute() {
        return url($this->video);
    }
}

