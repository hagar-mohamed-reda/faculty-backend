<?php

namespace Modules\Admin\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Admin\Entities\Doctor;
use Maatwebsite\Excel\Facades\Excel;
use Modules\Admin\http\Exports\DoctorsExport;
use Modules\Admin\http\Imports\DoctorsImport;
use DB;

class DoctorController extends Controller {

    public function get(Request $request) {

        $query = Doctor::query();
        if ($request->search) {
            $query->where('name', 'like', '%' . $request->search . '%')
                    ->orWhere('phone', 'like', '%' . $request->search . '%')
                    ->orWhere('universty_email', 'like', '%' . $request->search . '%')
                    ->orWhere('email', 'like', '%' . $request->search . '%');
        }

        if ($request->degree_id > 0)
            $query->where('degree_id', $request->degree_id);

        if ($request->special_id > 0)
            $query->where('special_id', $request->special_id);

        if ($request->division_id > 0)
            $query->where('division_id', $request->division_id);

        if ($request->faculty_id > 0)
            $query->where('faculty_id', $request->faculty_id);

        if ($request->type)
            $query->where('type', $request->type);

        return $query->with(['special', 'division', 'faculty', 'degree'])->latest()->paginate(10);
    }

    public function store(Request $request) {
        $validator = validator($request->all(), [
            "name" => "required",
            "username" => "required|unique:students,username," . $request->id,
            "email" => "required|unique:students,email," . $request->id,
            "phone" => "required|unique:students,phone," . $request->id,
            "password" => "required",
            "special_id" => "required",
            "division_id" => "required",
            "degree_id" => "required",
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->first(), "");
        }
        try {
            $data = $request->all();

            if (!isset($data['faculty_id'])) {
                $data['faculty_id'] = optional($request->user)->faculty_id;
            }
            $resource = Doctor::create($data);

            // upload resource image
            uploadImg($request->file('photo'), Doctor::$prefix, function($filename) use ($resource) {
                $resource->update([
                    "photo" => $filename
                ]);
            }, $resource->photo);
            
            
            watch("add doctor " . $resource->name, "fa fa-briefcase");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function update(Request $request, Doctor $resource) {
        $validator = validator($request->all(), [
            "name" => "required",
            "username" => "required|unique:students,username," . $request->id,
            "email" => "required|unique:students,email," . $request->id,
            "phone" => "required|unique:students,phone," . $request->id,
            "password" => "required",
            "special_id" => "required",
            "division_id" => "required",
            "degree_id" => "required",
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->first(), "");
        }
        try {
            $data = $request->all();

            $resource->update($data);
            
            // upload resource image
            uploadImg($request->file('photo'), Doctor::$prefix, function($filename) use ($resource) {
                $resource->update([
                    "photo" => $filename
                ]);
            }, $resource->photo);
            
            
            watch("edit doctor " . $resource->name, "fa fa-briefcase");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function destroy(Doctor $resource) {
        try {
            watch("remove doctor " . $resource->name, "fa fa-briefcase");
            $resource->delete();
            return responseJson(1, __('done'));
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function export() {
        return Excel::download(new DoctorsExport, 'doctors.xlsx');
    }

    public function import() {
        Excel::import(new DoctorsImport, request()->file('file'));

        return responseJson(1, __('done'));
    }

    public function getImportTemplateFile() {
        return response()->download('uploads/excel/add_doctor_template.xlsx');
    }

    public function getArchive() {
        return Doctor::onlyTrashed()->with(['special', 'division', 'faculty', 'degree'])->orderBy('deleted_at')->get();
    }

    public function restore(Request $request, $resource) {
        $data = DB::table('doctors')->where('id', $resource)->first();

        if ($data == 'null') {
            return responseJson(0, 'tere is no data', "");
        }
        try {
            //$data->update(['deleted_at' => 'null']);
            DB::table('doctors')
                    ->where('id', $resource)
                    ->update(['deleted_at' => null]);

            watch("restore doctor " . $data->name, "fa fa-briefcase");
            return responseJson(1, __('done'));
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

}
