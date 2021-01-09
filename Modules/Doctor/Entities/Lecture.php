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

    protected $appends = ['can_delete'];

    public function getCanDeleteAttribute() {
        return true;
    }
}

