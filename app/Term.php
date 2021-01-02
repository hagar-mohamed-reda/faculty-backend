<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Term extends Model
{
    protected $table  = 'terms';
    protected $fillable = ['name', 'start_date', 'end_date'];
}
