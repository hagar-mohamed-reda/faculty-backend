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
            $cours = Course::where('code', $this->preNumber($row[0]))->first();
            if (!$cours) {
                $cours = Course::create([
                    'code' => $row[0],
                    'name' => $row[1],
                    'credit_hour'=> $row[2],
                    'final_degree' => $row[3],
                    'level_id'=> $this->preNumber($row[4]),
                    'description' => $row[5],
                    'active' => '1',
                    'faculty_id' => optional(request()->user)->faculty_id,
                ]);
            } else {
                $cours->update([
                    'code' => $row[0],
                    'name' => $row[1],
                    'credit_hour'=> $row[2],
                    'final_degree' => $row[3],
                    'level_id'=> $this->preNumber($row[4]),
                    'description' => $row[5],
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
