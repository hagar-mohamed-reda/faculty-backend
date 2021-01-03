<?php

namespace Modules\Admin\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Admin\Entities\Degree;

class DegreeController extends Controller
{

    public function index()
    {
        $query = Degree::latest()->get();
        return $query;
    }

    public function store(Request $request)
    {
        $validator = validator($request->all(), [
            "name" => "required|unique:degrees,name,".$request->id,
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
			$data = $request->all();

			if (!isset($data['faculty_id'])) {
				$data['faculty_id'] = optional($request->user)->faculty_id;
			}
            $resource = Degree::create($data);
			watch("add degree " . $resource->name, "fa fa-bank-up");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function update(Request $request, Degree $resource)
    {
        $validator = validator($request->all(), [
            "name" => "required|unique:degrees,name,".$request->id,
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
            $resource->update($request->all());
			watch("edit degree " . $resource->name, "fa fa-bank-up");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function destroy(Degree $resource)
    {
        try {
			watch("remove degree " . $resource->name, "fa fa-bank-up");
            $resource->delete();
            return responseJson(1, __('done'));
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }
}
