<?php

namespace Modules\Doctor\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Doctor\Entities\Exam;
use Modules\Doctor\Entities\ExamDetail;
use Modules\Doctor\Entities\ExamQuestion;
use App\AppSetting;
use Auth;
use DB;

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
			// init varaibles
			$data = $request->all();
			// add academic year and term and doctor id
            $data['academic_year_id'] = optional(AppSetting::getCurrentAcademicYear())->id;
            $data['term_id'] = optional(AppSetting::getCurrentTerm())->id;
            $data['doctor_id'] = optional($request->user)->id;
			
			$details = json_decode($request->exam_details, true);
			$questions = json_decode($request->selected_questions, true);

			// add faculty id
			if (!isset($data['faculty_id'])) 
				$data['faculty_id'] = optional($request->user)->faculty_id;
			
			
			// start transaction
			DB::beginTransaction();
            
			// create exam object
			$resource = Exam::create($data);
			
			// add exam details
			foreach($details as $detail) {
				$detail['exam_id'] = $resource->id;
				$detail['faculty_id'] = $resource->faculty_id;
				ExamDetail::create($detail);
			}
			
			// add exam questions
			foreach($questions as $questionId) { 
				ExamQuestion::create([
					"exam_id" => $resource->id,
					"question_id" => $questionId
				]);
			}	
			
			// commit changes
			DB::commit();

			watch("add Exam " . $resource->name, "fa fa-newspaper-o");
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
			// init varaibles
			$data = $request->all();
			
			// add academic year and term and doctor id
            $data['academic_year_id'] = optional(AppSetting::getCurrentAcademicYear())->id;
            $data['term_id'] = optional(AppSetting::getCurrentTerm())->id;
            $data['doctor_id'] = optional($request->user)->id;
			
			$details = json_decode($request->exam_details, true);
			$questions = json_decode($request->selected_questions, true);

			// add faculty id
			if (!isset($data['faculty_id'])) 
				$data['faculty_id'] = optional($request->user)->faculty_id;
			
			
			// start transaction
			DB::beginTransaction();
            
			// update exam object
            $resource->update($data);
			
			// remove old exam details
			$resource->examDetails()->delete();
			
			// add new exam details
			foreach($details as $detail) {
				$detail['exam_id'] = $resource->id;
				$detail['faculty_id'] = $resource->faculty_id;
				ExamDetail::create($detail);
			}
			
			// remove old exam questions
			$resource->examQuestions()->delete();
			
			// add exam questions
			foreach($questions as $questionId) { 
				ExamQuestion::create([
					"exam_id" => $resource->id,
					"question_id" => $questionId
				]);
			}	
			
			// commit changes
			DB::commit();

			watch("edit Exam " . $resource->name, "fa fa-newspaper-o");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function destroy(Exam $resource)
    {
        try {
			// remove old exam details
			$resource->examDetails()->delete();
			
			// remove old exam questions
			$resource->examQuestions()->delete();
			
			watch("remove Exam " . $resource->name, "fa fa-newspaper-o");
            $resource->delete();
            return responseJson(1, __('done'));
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

}
