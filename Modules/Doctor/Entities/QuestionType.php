<?php

namespace Modules\Doctor\Entities;

use Illuminate\Database\Eloquent\Model;

class QuestionType extends Model
{
    protected $table = 'question_types';

    protected $fillable = [
        'name',
        'icon',
    ];

    protected $appends = ['can_delete'];

    public function getCanDeleteAttribute() {
        return true;
    }
}
