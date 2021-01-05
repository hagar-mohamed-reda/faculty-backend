<?php

namespace Modules\Admin\Entities;

use Illuminate\Database\Eloquent\Model;
use \Illuminate\Database\Eloquent\SoftDeletes;

class Course extends Model
{
    use SoftDeletes;

    protected $table = 'courses';
    protected $fillable = [
        'name',
        'photo',
        'level_id',
        'faculty_id',
        'code',
        'credit_hour',
        'description',
        'final_degree',
        'active',
    ];

    protected $appends = ['can_delete'];

    public function getCanDeleteAttribute() {
        return true;
    }

    public function level(){
        return $this->belongsTo(Level::class, 'level_id');
    }


    public function faculty(){
        return $this->belongsTo(Faculty::class, 'faculty_id');
    }

    public function departments(){
        return $this->hasMany(Department::class, 'department_id');
    }
}
