<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


Route::get('/api_auth', function (Illuminate\Http\Request $request) {
    return responseJson(0, __('login first'));
});




Route::group(['middleware' => 'api_auth'], function () {


    //end

});

Route::get('/global-setting', "HomeController@get");
Route::post('/global-setting/update', "HomeController@update");