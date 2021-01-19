<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;
use Modules\Admin\Entities\AcademicYear;
use Modules\Admin\Entities\Term;

class AppSetting extends Model
{
    /**
     * get current academic year 
     * 
     */
    public static function getCurrentAcademicYear() {
        $year = date('Y');
        $nextYear = $year + 1;
        $yearName = $year . "-" . $nextYear; 
        $academicYear = AcademicYear::where('name', $yearName)->first();
        
        if (!$academicYear) {
            $academicYear = AcademicYear::create([
                "name" => $yearName,
                "start_date" => $year . "-01-01",
                "end_date" => $nextYear . "-01-01",
                "faculty_id" => optional(request()->user)->faculty_id
            ]);
        }
        
        return $academicYear;
    }
    
    
    /**
     * get current term
     * 
     */
    public static function getCurrentTerm() {
        $currentTerm = DB::table('settings')->find(1);
        
        if (!$currentTerm) {
            $currentTerm = DB::table('settings')->insert([
                "id" => 1,
                "name" => 'term',
                "value" => 1,
                "faculty_id" => optional(request()->user)->faculty_id
            ]);
        }
         
        $term = Term::find($currentTerm->value);
        return $term;
    }
}
