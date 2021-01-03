<?php

use Illuminate\Http\Request;

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

Route::middleware('auth:api')->get('/admin', function (Request $request) {
    return $request->user();
});

Route::group(['middleware' => 'api_auth'], function () {

    //levels start
    Route::get('levels', 'LevelController@index');
    Route::post('levels/store', 'LevelController@store');
    Route::post('levels/update/{resource}', 'LevelController@update');
    Route::post('levels/delete/{resource}', 'LevelController@destroy');

    //departments start
    Route::get('departments', 'DepartmentController@index');
    Route::post('departments/store', 'DepartmentController@store');
    Route::post('departments/update/{resource}', 'DepartmentController@update');
    Route::post('departments/delete/{resource}', 'DepartmentController@destroy');

});
