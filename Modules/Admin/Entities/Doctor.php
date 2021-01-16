<?php

namespace Modules\Admin\Entities;

use Illuminate\Database\Eloquent\Model;
use \Illuminate\Database\Eloquent\SoftDeletes;

class Doctor extends Model
{
    use SoftDeletes;

    public static $prefix = "/uploads/doctors/";
    
    protected $table = 'doctors';
    protected $fillable = [
        'name',
        'photo',
        'username',
        'password',
        'special_id',
        'division_id',
        'faculty_id',
        'phone',
        'email',
        'universty_email',
        'active',
        'sms_code',
        'degree_id',
    ];

    protected $appends = ['can_delete', 'photo_url'];

    public function getCanDeleteAttribute() {
        return true;
    }

    public function getPhotoUrlAttribute() {
        return $this->photo? url($this->photo) : null;
    }

    public function special(){
        return $this->belongsTo(Specialization::class, 'special_id');
    }

    public function division(){
        return $this->belongsTo(Division::class, 'division_id');
    }

    public function faculty(){
        return $this->belongsTo(Faculty::class, 'faculty_id');
    }
    public function degree(){
        return $this->belongsTo(Degree::class, 'degree_id');
    }
}
