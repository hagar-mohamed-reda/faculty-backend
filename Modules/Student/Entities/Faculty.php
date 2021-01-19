<?php

namespace Modules\Student\Entities;

use Illuminate\Database\Eloquent\Model;

class Faculty extends Model
{
    protected $table = 'faculty';
    protected $fillable = [
        'name',
        'logo',
        'description',
        'message_text',
        'message_file',
        'vision_text',
        'vision_file',
        'target_text',
        'target_file',
    ];

    protected $appends = ['can_delete', 'logo_url'];

    public function getCanDeleteAttribute() {
        return true;
    }

    public function getLogoUrlAttribute() {
        return url($this->logo);
    }
}
