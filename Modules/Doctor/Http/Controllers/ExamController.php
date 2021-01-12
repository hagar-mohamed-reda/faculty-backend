<?php

namespace Modules\Doctor\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Doctor\Entities\Exam;
use Auth;
class ExamController extends Controller
{
    public function get(Request $request){

        $query = Exam::query();
        $query->where('doctor_id', $request->user->id);


        if ($request->search)
            $query->where('name', 'like', '%'. $request->search . '%');

        if ($request->search)
            $query->where('header_text', 'like', '%'. $request->search . '%');

        if ($request->search)
            $query->where('footer_text', 'like', '%'. $request->search . '%');

        if ($request->course_id > 0)
            $query->where('course_id', $request->course_id);

        if ($request->type > 0)
            $query->where('type', $request->type);

        return $query->with(['examQuestions', 'examDetails', 'course', 'doctor', 'academicYear', 'term'])
                    ->latest()->paginate(10);
    }

    public function load(Request $request,  $resource) {
        return Exam::with(['examQuestions', 'examDetails', 'course', 'doctor', 'academicYear', 'term'])
                        ->find($resource);
    }

    public function store(Request $request)
    {
        $validator = validator($request->all(), [
            'name' => 'required',
            'start_time' => 'required',
            'end_time' => 'required',
            'minutes' => 'required',
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
			$data = $request->all();

			if (!isset($data['faculty_id'])) {
				$data['faculty_id'] = optional($request->user)->faculty_id;
			}
            $resource = Exam::create($data);

			watch("add Exam " . $resource->name, "fa fa-graduation-cap");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function update(Request $request, Exam $resource)
    {
        $validator = validator($request->all(), [
            'name' => 'required',
            'start_time' => 'required',
            'end_time' => 'required',
            'minutes' => 'required',
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
			$data = $request->all();
            $resource->update($data);

			watch("edit Exam " . $resource->name, "fa fa-graduation-cap");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function destroy(Exam $resource)
    {
        try {
			watch("remove Exam " . $resource->name, "fa fa-graduation-cap");
            $resource->delete();
            return responseJson(1, __('done'));
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

}
