<?php

namespace Modules\Admin\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Admin\Entities\Level;

class LevelController extends Controller
{
    /**
     * Display a listing of the resource.
     * @return Response
     */
    public function index()
    {
        $query = Level::latest()->get(); 
        return $query;
    }

    /**
     * Show the form for creating a new resource.
     * @return Response
     */


    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Response
     */
    public function store(Request $request)
    {
        $validator = validator($request->all(), [
            "name" => "required", 
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
			$data = $request->all();
			
			if (!isset($data['faculty_id'])) {
				$data['faculty_id'] = optional($request->user)->faculty_id;
			}
            $resource = Level::create($data);
			watch("add level " . $resource->name, "fa fa-level-up");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    /**
     * Show the specified resource.
     * @param int $id
     * @return Response
     */


    /**
     * Show the form for editing the specified resource.
     * @param int $id
     * @return Response
     */


    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $id
     * @return Response
     */
    public function update(Request $request, Level $resource)
    {
        $validator = validator($request->all(), [
            "name" => "required",
            "faculty_id" => "required",
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
            $resource->update($request->all());
			watch("edit level " . $resource->name, "fa fa-level-up");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    /**
     * Remove the specified resource from storage.
     * @param int $id
     * @return Response
     */
    public function destroy(Level $resource)
    {
        try {
			watch("remove level " . $resource->name, "fa fa-level-up");
            $resource->delete();
            return responseJson(1, __('done'));
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }
}
