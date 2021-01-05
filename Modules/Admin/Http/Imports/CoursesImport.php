<?php

namespace Modules\Admin\http\Imports;

use Modules\Admin\Entities\Course;
use Modules\Admin\Entities\Department;
use Maatwebsite\Excel\Concerns\ToModel;

class CoursesImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        try {
            //$department = Department::find($row[3]);
            $cours = Course::where('code', $this->preNumber($row[1]))->first();
            if (!$cours) {
                $cours = Course::create([
                    'name' => $row[0],
                    'code' => $this->preNumber($row[1]),
                    'national_id' => $this->preNumber($row[2]),
                    'department_id' => $this->preNumber($row[3]),
                    'level_id' => $department->level_id,
                    'division_id' => $department->division_id,
                    'phone' => $this->preNumber($row[4]),
                    'email' => $row[5],
                    'username' => $row[2],
                    'active' => 1,
                    'faculty_id' => optional($request->user)->faculty_id,
                    'type' => 'normal',
                    'password' => bcrypt($row[2]),
                ]);
            } else {
                $cours->update([
                    'name' => $row[0],
                    'code' => $this->preNumber($row[1]),
                    'national_id' => $this->preNumber($row[2]),
                    'department_id' => $this->preNumber($row[3]),
                    'level_id' => $department->level_id,
                    'division_id' => $department->division_id,
                    'phone' => $this->preNumber($row[4]),
                    'email' => $row[5],
                    'active' => 1,
                    'type' => 'normal',
                ]);
            }

            return $cours;
        } catch (\Exception $th) {
            return null;
        }
    }

    public function preNumber($string) {
        $string = str_replace(" ", "", $string);
        $string = strtolower($string);

        return $string;
    }
}
