<?php

namespace Modules\Admin\Entities;

use Illuminate\Database\Eloquent\Model;
use \Illuminate\Database\Eloquent\SoftDeletes;

class Student extends Model
{
    use SoftDeletes;

    public static $prefix = "/uploads/students/";
    
    protected $table = 'students';
    protected $fillable = [
        'name',
        'photo',
        'username',
        'password',
        'level_id',
        'department_id',
        'division_id',
        'faculty_id',
        'code',
        'phone',
        'email',
        'national_id',
        'active',
        'sms_code',
        'type',
    ];

    protected $appends = ['can_delete', 'photo_url'];

    public function getCanDeleteAttribute() {
        return true;
    }

    public function getPhotoUrlAttribute() {
        return $this->photo? url($this->photo) : null;
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
