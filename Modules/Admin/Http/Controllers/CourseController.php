<?php

namespace Modules\Admin\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Admin\Entities\Course;
use Maatwebsite\Excel\Facades\Excel;
use Modules\Admin\http\Exports\CoursesExport;
use Modules\Admin\http\Imports\CoursesImport;
use DB;
class CourseController extends Controller
{
    public function get(Request $request){

        $query = Course::query();
        if ($request->search)
            $query->where('name', 'like', '%'. $request->search . '%')
                ->orWhere('code', 'like', '%'.$request->search.'%')
                ->orWhere('credit_hour', 'like', '%'.$request->search.'%')
                ->orWhere('description', 'like', '%'.$request->search.'%')
                ->orWhere('final_degree', 'like', '%'.$request->search.'%');

        if ($request->level_id > 0)
            $query->where('level_id', $request->level_id);

        if ($request->faculty_id > 0)
            $query->where('faculty_id', $request->faculty_id);

        return $query->with(['level', 'faculty', 'departments'])->latest()->paginate(10);
    }

    public function show(Course $resource){
        return $resource;
    }
    public function store(Request $request)
    {
        $validator = validator($request->all(), [
            "name" => "required",
            "code" => "required",
            "level_id" => "required",
            "credit_hour" => "required",
            "final_degree" => "required",
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
			$data = $request->all();

			if (!isset($data['faculty_id'])) {
				$data['faculty_id'] = optional($request->user)->faculty_id;
			}
            $resource = Course::create($data);

            foreach ($request->divisions as $division) {
                DB::table('course_departments')->insert([
                    'course_id' => $resource->id,
                    'faculty_id' => $data['faculty_id'],
                    'division_id' => $division,
                ]);
            }

			watch("add course " . $resource->name, "fa fa-graduation-cap");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function update(Request $request, Course $resource)
    {
        $validator = validator($request->all(), [
            "name" => "required",
            "code" => "required",
            "level_id" => "required",
            "credit_hour" => "required",
            "final_degree" => "required",
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
			$data = $request->all();
            $resource->update($data);

            $resource->departments()->delete();

            foreach ($request->divisions as $division) {
                DB::table('course_departments')->insert([
                    'course_id' => $resource->id,
                    'faculty_id' => $data['faculty_id'],
                    'division_id' => $division,
                ]);
            }

			watch("edit course " . $resource->name, "fa fa-graduation-cap");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function destroy(Course $resource)
    {
        try {
			watch("remove course " . $resource->name, "fa fa-graduation-cap");
            $resource->delete();
            return responseJson(1, __('done'));
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function export()
    {
        return Excel::download(new CoursesExport, 'courses.xlsx');
    }

    public function import()
    {
        Excel::import(new CoursesImport,request()->file('file'));

        return responseJson(1, __('done'));
    }

    public function getImportTemplateFile(){
        return response()->download('uploads/excel/add_course_template.xlsx');
    }

    public function getArchive(){
        return  Course::onlyTrashed()->with(['level', 'faculty', 'departments'])->latest()->get();
    }

    public function restore(Request $request, $resource){
        $data = DB::table('courses')->where('id', $resource)->first();

        if ($data == 'null') {
            return responseJson(0, 'there is no data', "");
        }
        try {
            //$data->update(['deleted_at' => 'null']);
            DB::table('courses')
                ->where('id', $resource)
                ->update(['deleted_at' => null]);

			watch("restore course " . $data->name, "fa fa-graduation-cap");
            return responseJson(1, __('done'));

        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }

    }


}
