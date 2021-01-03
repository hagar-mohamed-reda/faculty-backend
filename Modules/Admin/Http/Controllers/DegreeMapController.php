<?php

namespace Modules\Admin\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Admin\Entities\DegreeMap;

class DegreeMapController extends Controller
{

    public function index()
    {
        $query = DegreeMap::latest()->get();
        return $query;
    }

    public function store(Request $request)
    {
        $validator = validator($request->all(), [
            "name" => "required|unique:degree_maps,name,".$request->id,
            "gpa"  =>  "required",
            "key"  =>  "required",
            "percent_from"  =>  "required",
            "percent_to"  =>  "required",
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
			$data = $request->all();

			if (!isset($data['faculty_id'])) {
				$data['faculty_id'] = optional($request->user)->faculty_id;
			}
            $resource = DegreeMap::create($data);
			watch("add degree_map " . $resource->name, "fa fa-bank-up");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function update(Request $request, DegreeMap $resource)
    {
        $validator = validator($request->all(), [
            "name" => "required|unique:degree_maps,name,".$request->id,
            "gpa"  =>  "required",
            "key"  =>  "required",
            "percent_from"  =>  "required",
            "percent_to"  =>  "required",
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
            $resource->update($request->all());
			watch("edit degree_map " . $resource->name, "fa fa-bank-up");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function destroy(DegreeMap $resource)
    {
        try {
			watch("remove degree_map " . $resource->name, "fa fa-bank-up");
            $resource->delete();
            return responseJson(1, __('done'));
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }
}
