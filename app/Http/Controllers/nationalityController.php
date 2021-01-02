<?php

namespace App\Http\Controllers;

use App\Http\Requests\NationalityRequest;
use App\Nationality;
use Illuminate\Http\Request;


class nationalityController extends Controller
{
    public function __construct()
    {
//        $this->middleware(['permission:nationalities_read'])->only('index');
//        $this->middleware(['permission:nationalities_create'])->only('create');
//        $this->middleware(['permission:nationalities_update'])->only('edit');
//        $this->middleware(['permission:nationalities_delete'])->only('destroy');

    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $nationalities = Nationality::OrderBy('created_at', 'ASC')->get();
        return responseJson(1, "ok", $nationalities);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('main_settings.nationalities.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
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
            $nationality = Nationality::create($request->all());
            if ($nationality) {
                notify()->success("تم حفظ البيانات بنجاح", "", "bottomLeft",);

                return responseJson(1, __('ok'), $nationality);
            } else {
            }
        } catch (\Exception $ex) {
            return responseJson(0, "", $ex->getMessage());
        }
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $nationality = Nationality::find($id);
        if (!$nationality) {
            return responseJson(0, __('data not found'), '');
        }
        return responseJson(1, "ok", $nationality);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $nationality = Nationality::find($id);
        if (!$nationality) {
            notify()->warning("هذه البيانات غير موجودة !", "", "bottomLeft",);
            return redirect()->route('nationalities.index');
        }
        return view('main_settings.nationalities.edit', compact('nationality'));

    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(NationalityRequest $request, $id)
    {
        try {
            $nationality = Nationality::find($id);
            if (!$nationality) {
                return responseJson(0, __('data not found'), '');

            } else {
                $nationality->update($request->all());
                return responseJson(1, __('data updated successfully'), $nationality);

            }
        } catch (\Exception $ex) {
            return responseJson(0, "", $ex->getMessage());
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $nationality = Nationality::find($id);
            if (!$nationality) {
                return responseJson(0, __('data not found'), '');
            }

            if ($nationality->applications->count() > 0 || $nationality->students->count()  > 0 ) {
                return responseJson(0, __('this item can not be deleted'), $nationality->fresh());

            }
            $nationality->delete();
            return responseJson(1, __('deleted successfully'), '');
        } catch (\Exception $ex) {
            return responseJson(0, "", $ex->getMessage());
        }
    }

}
