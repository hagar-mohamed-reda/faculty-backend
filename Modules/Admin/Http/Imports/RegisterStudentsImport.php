<?php

namespace Modules\Admin\http\Imports;

use Modules\Admin\Entities\RegisterStudent;
use Modules\Admin\Entities\Department;
use Maatwebsite\Excel\Concerns\ToModel;

class RegisterStudentsImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        try {
            $stds = RegisterStudent::where('student_id', $this->preNumber($row[0]))
                                        ->where('course_id', $this->preNumber($row[1]))
                                        ->where('group_id', request()->group_id)
                                        ->first();
            if (!$stds) {
                $stds = RegisterStudent::create([
                    'student_id' => $this->preNumber($row[0]),
                    'course_id' => $this->preNumber($row[1]),
                    'group_id'  => request()->group_id,
                    'faculty_id' => optional($request->user)->faculty_id,
                ]);
            } else {
                $stds->update([
                    'student_id' => $this->preNumber($row[0]),
                    'course_id' => $this->preNumber($row[1]),
                    'group_id'  => request()->group_id,
                    'faculty_id' => optional($request->user)->faculty_id,
                ]);
            }

            return $stds;
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
