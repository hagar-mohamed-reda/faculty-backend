<?php

namespace Modules\Admin\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Admin\Entities\Student;
use Maatwebsite\Excel\Facades\Excel;
use Modules\Admin\http\Exports\StudentsExport;
use Modules\Admin\http\Imports\StudentsImport;
use DB;
class AdminStudentController extends Controller
{
    public function get(Request $request){

        $query = Student::query();
        if ($request->search)
            $query->where('name', 'like', '%'. $request->search . '%');

        if ($request->level_id > 0)
            $query->where('level_id', 'like', '%'. $request->level_id . '%');

        if ($request->department_id > 0)
            $query->where('department_id', 'like', '%'. $request->department_id . '%');

        if ($request->division_id > 0)
            $query->where('division_id', 'like', '%'. $request->division_id . '%');

        return $query->with(['level', 'division', 'department'])->latest()->paginate(10);
    }

    public function store(Request $request)
    {
        $validator = validator($request->all(), [
            "name" => "required",
            "code" => "required",
            "national_id" => "required",
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
			$data = $request->all();

			if (!isset($data['faculty_id'])) {
				$data['faculty_id'] = optional($request->user)->faculty_id;
			}
            $resource = Student::create($data);
			watch("add student " . $resource->name, "fa fa-bank-up");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function update(Request $request, Student $resource)
    {
        $validator = validator($request->all(), [
            "name" => "required",
            "code" => "required",
            "national_id" => "required",
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
            $resource->update($request->all());
			watch("edit student " . $resource->name, "fa fa-bank-up");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function destroy(Student $resource)
    {
        try {
			watch("remove student " . $resource->name, "fa fa-bank-up");
            $resource->delete();
            return responseJson(1, __('done'));
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function export()
    {
        return Excel::download(new StudentsExport, 'students.xlsx');
    }

    public function import()
    {
        Excel::import(new StudentsImport,request()->file('file'));

        return responseJson(1, __('done'));
    }

    public function getImportTemplateFile(){
        return response()->download('uploads/excel/add_student_template.xlsx');
    }

    public function getArchive(){
        return  Student::onlyTrashed()->get();
    }

    public function restore(Request $request, $resource){
        $data = DB::table('students')->where('id', $resource)->first();

        if ($data == 'null') {
            return responseJson(0, 'tere is no data', "");
        }
        try {
            $data->update(['deleted_at' => 'null']);

			watch("restore student " . $data->name, "fa fa-bank-up");
            return responseJson(1, __('done'), $data);

        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }

    }


}
