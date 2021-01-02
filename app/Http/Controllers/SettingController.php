<?php

namespace App\Http\Controllers;

use App\Setting;
use App\Http\Requests\SettingRequest;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class SettingController extends Controller
{

    public function __construct() {
        
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index() {
        return view('main_settings.cities.index', compact('cities'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create() {
        return view('main_settings.cities.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  Request  $request
     * @return Response
     */
    public function update(Request $request, Setting $setting) {
        try {
            $setting->update($request->all());
            notfy(__('change setting'), __('change setting ') . $setting->name, 'fa fa-cogs');
            notify()->success(__('process has been success'), "", "bottomLeft");
        } catch (Exception $th) {
            notify()->error($th->getMessage(), "", "bottomLeft");
        }

        return back();
    }

}
