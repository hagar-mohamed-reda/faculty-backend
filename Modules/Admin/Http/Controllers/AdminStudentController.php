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

class AdminStudentController extends Controller {

    public function get(Request $request) {

        $query = Student::query();
        if ($request->search)
            $query->where('name', 'like', '%' . $request->search . '%')
                    ->orWhere('code', 'like', '%' . $request->search . '%');

        if ($request->level_id > 0)
            $query->where('level_id', $request->level_id);

        if ($request->department_id > 0)
            $query->where('department_id', $request->department_id);

        if ($request->division_id > 0)
            $query->where('division_id', $request->division_id);

        if ($request->type)
            $query->where('type', $request->type);

        return $query->with(['level', 'division', 'department'])->latest()->paginate(60);
    }

    public function store(Request $request) {
        $validator = validator($request->all(), [
            "name" => "required",
            "code" => "required|unique:students,code,".$request->id,
            "phone" => "required|unique:students,phone,".$request->id,  
            "username" => "required|unique:students,username,".$request->id,  
            "national_id" => "required|unique:students,national_id,".$request->id, 
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
            $resource->update([
                "division_id" => optional($resource->department)->division_id
            ]);
            
            // upload student image
            uploadImg($request->file('photo'), Student::$prefix, function($filename) use ($resource) {
                $resource->update([
                    "photo" => $filename
                ]);
            }, $resource->photo);
            
            watch("add student " . $resource->name, "fa fa-bank-up");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function update(Request $request, Student $resource) {
        $validator = validator($request->all(), [
            "name" => "required",
            "code" => "required|unique:students,code,".$request->id,
            "phone" => "required|unique:students,phone,".$request->id,  
            "username" => "required|unique:students,username,".$request->id,  
            "national_id" => "required|unique:students,national_id,".$request->id, 
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->first(), "");
        }
        try {
            $data = $request->all();
            $data['division_id'] = optional($resource->department)->division_id;
            $resource->update($data);
             
            // upload student image
            uploadImg($request->file('photo'), Student::$prefix, function($filename) use ($resource) {
                $resource->update([
                    "photo" => $filename
                ]);
            }, $resource->photo);
            
            watch("edit student " . $resource->name, "fa fa-bank-up");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function destroy(Student $resource) {
        try {
            watch("remove student " . $resource->name, "fa fa-bank-up");
            $resource->delete();
            return responseJson(1, __('done'));
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function export() {
        return Excel::download(new StudentsExport, 'students.xlsx');
    }

    public function import() {
        Excel::import(new StudentsImport, request()->file('file'));

        return responseJson(1, __('done'));
    }

    public function getImportTemplateFile() {
        return response()->download('uploads/excel/add_student_template.xlsx');
    }

    public function getArchive() {
        return Student::onlyTrashed()->with(['level', 'division', 'department'])->latest()->get();
    }

    public function restore(Request $request, $resource) {
        $data = DB::table('students')->where('id', $resource)->first();

        if ($data == 'null') {
            return responseJson(0, 'tere is no data', "");
        }
        try {
            //$data->update(['deleted_at' => 'null']);
            DB::table('students')
                    ->where('id', $resource)
                    ->update(['deleted_at' => null]);

            watch("restore student " . $data->name, "fa fa-bank-up");
            return responseJson(1, __('done'));
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

}
