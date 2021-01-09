<?php

namespace Modules\Doctor\Entities;

use Illuminate\Database\Eloquent\Model;

class Specialization extends Model
{
    protected $table = 'specializations';
    protected $fillable = [
        'name',
        'faculty_id'
    ];

    protected $appends = ['can_delete'];

    public function getCanDeleteAttribute() {
        return true;
    }
}
