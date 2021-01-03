<?php

namespace Modules\Admin\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Admin\Entities\AcademicYear;

class AcademicYearController extends Controller
{

    public function index()
    {
        $query = AcademicYear::latest()->get();
        return $query;
    }

    public function store(Request $request)
    {
        $validator = validator($request->all(), [
            "start_date" => "required",
            "end_date" => "required",
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
            $data = $request->all();
            $data->name = date("Y", strtotime($request->start_date)) . "-" . date("Y", strtotime($request->end_date));

			if (!isset($data['faculty_id'])) {
				$data['faculty_id'] = optional($request->user)->faculty_id;
			}
            $resource = AcademicYear::create($data);
			watch("add academic year " . $resource->name, "fa fa-bank-up");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function update(Request $request, AcademicYear $resource)
    {
        $validator = validator($request->all(), [
            "start_date" => "required",
            "end_date" => "required",
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
            $data = $request->all();
            $data->name = date("Y", strtotime($request->start_date)) . "-" . date("Y", strtotime($request->end_date));

            $resource->update($data);
			watch("edit academic year " . $resource->name, "fa fa-bank-up");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function destroy(AcademicYear $resource)
    {
        try {
			watch("remove academic year " . $resource->name, "fa fa-bank-up");
            $resource->delete();
            return responseJson(1, __('done'));
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }
}
