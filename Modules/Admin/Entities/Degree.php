<?php

namespace Modules\Admin\Entities;

use Illuminate\Database\Eloquent\Model;

class Degree extends Model
{
    protected $table = 'degrees';
    protected $fillable = [
        'name',
        'faculty_id'
    ];

    protected $appends = ['can_delete'];

    public function getCanDeleteAttribute() {
        return true;
    }
}
