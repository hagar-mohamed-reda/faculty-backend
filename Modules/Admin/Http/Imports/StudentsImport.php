<?php

namespace Modules\Admin\http\Imports;

use Modules\Admin\Entities\Student;
use Modules\Admin\Entities\Department;
use Maatwebsite\Excel\Concerns\ToModel;

class StudentsImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        $department = Department::find($row[3]);
        $stds = Student::create([
            'name' => $row[0],
            'code' => $row[1],
            'national_id' => $row[2],
            'department_id' => $row[3],
            'level_id' => $department->level_id,
            'division_id' => $department->division_id,
            'phone' => $row[4],
            'email' => $row[5],
            'username' => $row[2],
            'password' => bcrypt($row[2]),
        ]);

        return $stds;
    }
}
