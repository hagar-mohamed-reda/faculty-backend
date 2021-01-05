<?php

namespace Modules\Admin\http\Imports;

use Modules\Admin\Entities\Doctor;
use Modules\Admin\Entities\Department;
use Maatwebsite\Excel\Concerns\ToModel;

class DoctorsImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        try {
            $doc = Doctor::create([
                'name' => $row[0],
                'special_id' => $this->preNumber($row[1]),
                'degree_id' => $this->preNumber($row[2]),
                'division_id' => $this->preNumber($row[3]),
                'phone' => $this->preNumber($row[4]),
                'email' => $row[5],
                'universty_email' => $row[6],
                'username' => $row[4],
                'active' => 1,
                'type' => 'normal',
                'password' => bcrypt($row[4]),
            ]);

            return $doc;
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
