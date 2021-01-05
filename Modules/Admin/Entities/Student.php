<?php

namespace Modules\Admin\Entities;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    protected $table = 'students';
    protected $fillable = [
        'name',
        'photo',
        'username',
        'password',
        'level_id',
        'department_id',
        'devision_id',
        'faculty_id',
        'code',
        'phone',
        'email',
        'national_id',
        'active',
        'sms_code',
        'type',
    ];

    protected $appends = ['can_delete'];

    public function getCanDeleteAttribute() {
        return true;
    }

    public function level(){
        return $this->belongsTo(Level::class, 'level_id');
    }

    public function division(){
        return $this->belongsTo(Division::class, 'division_id');
    }

    public function department(){
        return $this->belongsTo(Department::class, 'department_id');
    }
}
