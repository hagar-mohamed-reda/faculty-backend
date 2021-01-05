<?php

namespace Modules\Admin\http\Exports;

use Modules\Admin\Entities\Doctor;
use Maatwebsite\Excel\Concerns\FromCollection;
use DB;

class DoctorsExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        $fields = request()->fields;
        return DB::table('doctors')->get($fields);
    }
}
