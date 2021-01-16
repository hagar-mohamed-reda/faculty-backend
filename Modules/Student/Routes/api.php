<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your Student. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::group(['middleware' => 'api_auth'], function () {
    Route::prefix('/student')->group(function() {

        //courses start
        Route::get('courses', 'CourseController@get');
        Route::get('courses/{resource}', 'CourseController@load');

        //lectures start
        Route::get('lectures', 'LectureController@get');
        Route::get('lectures/{resource}', 'LectureController@load');


        //assignments start
        Route::get('assignments', 'AssignmentController@get');
        Route::get('assignments/{resource}', 'AssignmentController@load');

        //student assignment starts
        Route::post('student-assignments/update/{resource}', 'StudentAssignmentController@update');
    });
});

Route::post('student/login', 'AuthController@login');
Route::post('student/forget-password', 'AuthController@forgetPassword');

