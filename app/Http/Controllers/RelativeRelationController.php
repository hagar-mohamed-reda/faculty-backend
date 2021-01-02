<?php

namespace App\Http\Controllers;

use App\RelativeRelation;
use Illuminate\Http\Request;

class RelativeRelationController extends Controller
{
    public function __construct()
    {
//        $this->middleware(['permission:relations_read'])->only('index');
//        $this->middleware(['permission:relations_create'])->only('create');
//        $this->middleware(['permission:relations_update'])->only('edit');
//        $this->middleware(['permission:relations_delete'])->only('destroy');

    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $relativeRelations = RelativeRelation::OrderBy('created_at', 'DESC')->get();
        return responseJson(1, "ok", $relativeRelations);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('main_settings.relative_relations.create');

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
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
            $relativeRelations = RelativeRelation::create($request->all());
            if ($relativeRelations) {
                return responseJson(1, __('data created successfully'), $relativeRelations);

            } else {

            }
        } catch (\Exception $ex) {
            return responseJson(0, $ex->getMessage(), "");

        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $relativeRelations = RelativeRelation::find($id);
        if (!$relativeRelations) {
            return responseJson(0, __('data not found'), '');
        }
        return responseJson(1, "ok", $relativeRelations);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $relativeRelation = RelativeRelation::find($id);
        if (!$relativeRelation) {
            notify()->warning("هذه الاعدادات غير موجودة ", "", "bottomLeft", );
            return redirect()->route('relations.index');
        }
        return view('main_settings.relative_relations.edit', compact('relativeRelation'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validator = validator($request->all(), [
            "name" => "required",
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
            $relativeRelation = RelativeRelation::find($id);
            if (!$relativeRelation) {
                return responseJson(0, __('data not found'), '');

            } else {
                $relativeRelation->update($request->all());
                return responseJson(1, __('data updated successfully'), $relativeRelation);
            }
        } catch (\Exception $ex) {
            return responseJson(0, $ex->getMessage(), "");
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $relativeRelation = RelativeRelation::find($id);
            if (!$relativeRelation) {
                return responseJson(0, __('data not found'), '');
            }
            $relativeRelation->delete();
            return responseJson(1, __('deleted successfully'), '');
        } catch (\Exception $ex) {
            return responseJson(0, $ex->getMessage(), "");
        }
    }
}
