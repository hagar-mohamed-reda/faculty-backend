<?php

namespace Modules\Admin\Entities;

use Illuminate\Database\Eloquent\Model;

class ResearchDegreeMap extends Model
{
    protected $table = 'research_degree_maps';
    protected $fillable = [
        'name',
        'faculty_id'
    ];

    protected $appends = ['can_delete'];

    public function getCanDeleteAttribute() {
        return true;
    }
}
