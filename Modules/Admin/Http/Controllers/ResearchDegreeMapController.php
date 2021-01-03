<?php

namespace Modules\Admin\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Admin\Entities\ResearchDegreeMap;

class ResearchDegreeMapController extends Controller
{

    public function index()
    {
        $query = ResearchDegreeMap::latest()->get();
        return $query;
    }

    public function store(Request $request)
    {
        $validator = validator($request->all(), [
            "name" => "required|unique:research_degree_maps,name,".$request->id,
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
			$data = $request->all();

			if (!isset($data['faculty_id'])) {
				$data['faculty_id'] = optional($request->user)->faculty_id;
			}
            $resource = ResearchDegreeMap::create($data);
			watch("add research degree map " . $resource->name, "fa fa-bank-up");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function update(Request $request, ResearchDegreeMap $resource)
    {
        $validator = validator($request->all(), [
            "name" => "required|unique:research_degree_maps,name,".$request->id,
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
            $resource->update($request->all());
			watch("edit research degree map " . $resource->name, "fa fa-bank-up");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function destroy(ResearchDegreeMap $resource)
    {
        try {
			watch("remove research degree map " . $resource->name, "fa fa-banck-up");
            $resource->delete();
            return responseJson(1, __('done'));
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }
}
