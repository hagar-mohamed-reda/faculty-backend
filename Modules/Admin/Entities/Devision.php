<?php

namespace Modules\Admin\Entities;

use Illuminate\Database\Eloquent\Model;

class Devision extends Model
{
    protected $table = 'devisions';
    protected $fillable = [
        'name',
        'faculty_id'
    ];

    protected $appends = ['can_delete'];

    public function getCanDeleteAttribute() {
        return true;
    }
}
