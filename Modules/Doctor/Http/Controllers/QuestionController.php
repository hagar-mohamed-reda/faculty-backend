<?php

namespace Modules\Doctor\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use App\AppSetting;
use Modules\Doctor\Entities\Question;
use Auth;
use Modules\Doctor\Entities\QuestionChoice;


class QuestionController extends Controller {

    public function get(Request $request) {
        $query = Question::where('doctor_id', $request->user->id);

        if ($request->question_type_id > 0)
            $query->where('question_type_id', $request->question_type_id);

        if ($request->question_level_id > 0)
            $query->where('question_level_id', $request->question_level_id);

        if ($request->question_category_id > 0)
            $query->where('question_category_id', $request->question_category_id);

        if ($request->course_id > 0)
            $query->where('course_id', $request->course_id);
			
		if ($request->question_types)
			$query->whereIn('question_type_id', $request->question_types);

		if ($request->question_levels)
			$query->whereIn('question_level_id', $request->question_levels);
			
        return $query->with(['questionType', 'questionLevel', 'questionCategory', 'course', 'choices'])
                    ->latest()->paginate(60);
    }

    public function store(Request $request) {
        $validator = validator($request->all(), [
            "question_type_id" => "required",
            "question_level_id" => "required",
            "question_category_id" => "required",
            "course_id" => "required"
        ]);


        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }

        try {
            $data = $request->all();
            $data['doctor_id'] = optional($request->user)->id;
            if (!isset($data['faculty_id'])) {
                $data['faculty_id'] = optional($request->user)->faculty_id;
            }
            $choices = json_decode($request->question_choices);
            $resource = Question::create($data);

            // add question choices
            foreach($choices as $choice) {
                QuestionChoice::create([
                    "text" => $choice->text,
                    "is_answer" => $choice->is_answer,
                    "question_id" => $resource->id,
                    "faculty_id" => $resource->faculty_id,
                ]);
            }

            // upload question image
            uploadImg($request->file('image'), Question::$prefix, function($filename) use ($resource) {
                $resource->update([
                    "image" => $filename
                ]);
            }, $resource->image);




            watch("add question " . $resource->text, "fa fa-question");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function update(Request $request, Question $resource) {
        $validator = validator($request->all(), [
            "question_type_id" => "required",
            "question_level_id" => "required",
            "question_category_id" => "required",
            "course_id" => "required"
        ]);


        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }

        try {
            $data = $request->all();
            $data['doctor_id'] = optional($request->user)->id;
            if (!isset($data['faculty_id'])) {
                $data['faculty_id'] = optional($request->user)->faculty_id;
            }
            
            $choices = json_decode($request->question_choices);
            $resource->update($data);

            // delete old
            $resource->choices()->delete();
            
            // add question choices
            foreach($choices as $choice) {
                QuestionChoice::create([
                    "text" => $choice->text,
                    "is_answer" => $choice->is_answer,
                    "question_id" => $resource->id,
                    "faculty_id" => $resource->faculty_id,
                ]);
            }

            // upload question image
            uploadImg($request->file('image'), Question::$prefix, function($filename) use ($resource) {
                $resource->update([
                    "image" => $filename
                ]);
            }, $resource->image);


            watch("edit question " . $resource->text, "fa fa-question");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function destroy(Question $resource) {
        try {
            watch("remove question " . $resource->text, "fa fa-question");
            $resource->choices()->delete();
            $resource->delete();
            return responseJson(1, __('done'));
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

}
