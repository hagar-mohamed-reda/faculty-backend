<?php

namespace Modules\Admin\http\Exports;

use Modules\Admin\Entities\Course;
use Maatwebsite\Excel\Concerns\FromCollection;
use DB;

class CoursesExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        $fields = request()->fields;
        $cols = [];//$fields;
        foreach($fields as $col) {
            if (str_contains($col, "_id")) {
                $colmn = str_replace("_id", "", $col);
                $table = $colmn;
                if ($col != "faculty_id")
                    $table .= "s";

                $colRaw = DB::raw("(select name from ".$table." where ".$table.".id = ".$col.") as " . $colmn);
                $cols[] = $colRaw;
            } else {
                $cols[] = $col;
            }
        }

        return DB::table('courses')->select($cols)->get($cols);
    }
}
