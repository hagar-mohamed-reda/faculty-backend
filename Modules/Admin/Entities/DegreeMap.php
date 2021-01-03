<?php

namespace Modules\Admin\Entities;

use Illuminate\Database\Eloquent\Model;

class DegreeMap extends Model
{
    protected $table = 'degree_maps';
    protected $fillable = [
        'name',
        'gpa',
        'key',
        'percent_from',
        'percent_to',
        'faculty_id'
    ];

    protected $appends = ['can_delete'];

    public function getCanDeleteAttribute() {
        return true;
    }
}
