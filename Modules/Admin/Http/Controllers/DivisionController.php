<?php

namespace Modules\Admin\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Admin\Entities\Division;

class DivisionController extends Controller
{
    public function index()
    {
        $query = Division::latest()->get();
        return $query;
    }

    public function store(Request $request)
    {
        $validator = validator($request->all(), [
            "name" => "required|unique:divisions,name,".$request->id,
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
			$data = $request->all();

			if (!isset($data['faculty_id'])) {
				$data['faculty_id'] = optional($request->user)->faculty_id;
			}
            $resource = Division::create($data);
			watch("add division " . $resource->name, "fa fa-bank-up");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function update(Request $request, Division $resource)
    {
        $validator = validator($request->all(), [
            "name" => "required|unique:divisions,name,".$request->id,
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
            $resource->update($request->all());
			watch("edit division " . $resource->name, "fa fa-bank-up");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function destroy(Division $resource)
    {
        try {
			watch("remove division " . $resource->name, "fa fa-bank-up");
            $resource->delete();
            return responseJson(1, __('done'));
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }
}
