<?php

namespace Modules\Doctor\Entities;

use Illuminate\Database\Eloquent\Model;

class QuestionLevel extends Model
{
    protected $table = 'question_levels';

    protected $fillable = [
        'name',
        'icon',
    ];

    protected $appends = ['can_delete'];

    public function getCanDeleteAttribute() {
        return true;
    }
}
