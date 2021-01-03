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
}
