<?php

namespace Modules\Admin\http\Exports;

use Modules\Admin\Entities\Student;
use Maatwebsite\Excel\Concerns\FromCollection;
use DB;

class StudentsExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        $fields = request()->fields;
        return DB::table('students')->get($fields);
    }
}
