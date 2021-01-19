<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    { 
    }
 

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function get()
    {
        return [
            "term" => currentTerm(),
            "academic_year" => currentAcademicYear(),
        ];
    }
    
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function update(Request $request)
    {
        $validator = validator($request->all(), [
            "id" => "required",
            "value" => "required",
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->first(), "");
        }
        try {
            $setting = DB::table('settings')->find($request->id);
            DB::table('settings')->where('id', $request->id)->update([
                "value" => $request->value
            ]);
            
            watch(__('change settings'), "fa fa-cogs");
            return responseJson(1, __('done'), $setting);
        } catch (\Exception $ex) {
            return responseJson(0, $ex->getMessage(), "");

        }
    }
    
 
}
