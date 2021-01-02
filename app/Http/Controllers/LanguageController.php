<?php

namespace App\Http\Controllers;

use App\Http\Requests\LanguageRequest;
use App\Language;
use Illuminate\Http\Request;

class LanguageController extends Controller
{
    public function __construct()
    {
//        $this->middleware(['permission:languages_read'])->only('index');
//        $this->middleware(['permission:languages_create'])->only('create');
//        $this->middleware(['permission:languages_update'])->only('edit');
//        $this->middleware(['permission:languages_delete'])->only('destroy');

    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $languages = Language::OrderBy('created_at', 'desc')->get();
        return responseJson(1, "ok", $languages);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('main_settings.languages.create');
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
            $language = Language::create($request->all());
            if ($language) {
                return responseJson(1, __('data created successfully'), $language);

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
        $language = Language::find($id);
        if (!$language) {
            return responseJson(0, __('data not found'), '');
        }
        return responseJson(1, "ok", $language);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $language = Language::find($id);
        if (!$language) {
            notify()->warning("هذه الاعدادات غير موجودة", "", "bottomLeft",);
            return redirect()->route('languages.index');
        }
        return view('main_settings.languages.edit', compact('language'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
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
            $language = Language::find($id);

            if (!$language) {
                return responseJson(0, __('data not found'), '');
            } else {
                $language->update($request->all());
                return responseJson(1, __('data updated successfully'), $language);
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
            $language = Language::find($id);
            if (!$language) {
                return responseJson(0, __('data not found'), '');
            }
            if ($language->applicationsLang1->count() > 0 || $language->applicationsLang2->count() > 0 || $language->studentsLang1->count() > 0 || $language->studentsLang1->count() > 0) {
                return responseJson(0, __('this item can not be deleted'), $language->fresh());
            }
            $language->delete();
            return responseJson(1, __('deleted successfully'), '');

        } catch (\Exception $ex) {
            return responseJson(0, "", $ex->getMessage());
        }
    }
}
