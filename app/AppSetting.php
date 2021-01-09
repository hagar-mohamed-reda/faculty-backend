<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class AppSetting extends Model
{
    /**
     * get current academic year 
     * 
     */
    public static function getCurrentAcademicYear() {
        $resource = new \Modules\Admin\Entities\AcademicYear();//DB::table('academic_years')->find(1);
        $resource->id = 1;
        $resource->name = "2021-2022";
        return $resource;
    }
    
    
    /**
     * get current term
     * 
     */
    public static function getCurrentTerm() {
        $resource = new \Modules\Admin\Entities\Term();//DB::table('terms')->find(1);
        $resource->id = 1;
        $resource->name = "term1";
        return $resource;
    }
}
