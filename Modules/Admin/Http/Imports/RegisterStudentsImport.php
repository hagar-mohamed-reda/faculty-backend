<?php

namespace Modules\Admin\http\Imports;

use Modules\Admin\Entities\RegisterStudent;
use Modules\Admin\Entities\Department;
use Maatwebsite\Excel\Concerns\ToModel;
use Modules\Admin\Entities\Course;
use Modules\Admin\Entities\Student;

class RegisterStudentsImport implements ToModel {

    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function model(array $row) {
        try {
            $student = Student::where('code', $this->preNumber($row[0]))->first();
            $course = Course::find(request()->course_id);
            $stds = RegisterStudent::where('student_id', $student->id)
                    ->where('course_id', $course->id)
                    ->first();
            if (!$stds) {
                $stds = RegisterStudent::create([
                            'student_id' => $student->id,
                            'course_id' => $course->id,
                            'group_id' => request()->group_id,
                            'academic_year_id' => optional(currentAcademicYear())->id,
                            'term_id' => optional(currentTerm())->id,
                            'faculty_id' => optional(request()->user)->faculty_id,
                ]);
            } else {
                $stds->update([
                    'group_id' => request()->group_id
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
