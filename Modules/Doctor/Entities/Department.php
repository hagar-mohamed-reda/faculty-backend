<?php

namespace Modules\Doctor\Entities;

use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
    protected $table = 'departments';
    protected $fillable = [
        'name',
        'division_id',
        'level_id',
        'faculty_id'
    ];

    protected $appends = ['can_delete'];

    public function getCanDeleteAttribute() {
        return true;
    }
}
