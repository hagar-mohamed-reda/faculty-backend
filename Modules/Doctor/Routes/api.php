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

Route::middleware('auth:api')->get('/doctor', function (Request $request) {

    return $request->user();
});

Route::prefix('/doctor')->middleware(['auth:api'])->group(function(){


    Route::get('courses', 'CourseController@get');

    //lectures start
    Route::get('lectures', 'LectureController@get');
    Route::post('lectures/store', 'LectureController@store');
    Route::post('lectures/update/{resource}', 'LectureController@update');
    Route::post('lectures/delete/{resource}', 'LectureController@destroy');

});
