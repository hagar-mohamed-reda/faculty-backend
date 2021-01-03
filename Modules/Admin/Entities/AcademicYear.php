<?php

namespace Modules\Admin\Entities;

use Illuminate\Database\Eloquent\Model;

class AcademicYear extends Model
{
    protected $table = 'academic_years';
    protected $fillable = [
        'name',
        'faculty_id',
        'start_date',
        'end_date',
    ];

    protected $appends = ['can_delete'];

    public function getCanDeleteAttribute() {
        return true;
    }
}
