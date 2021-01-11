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

Route::prefix('/doctor')->middleware(['doctor_auth'])->group(function(){


    Route::get('courses', 'CourseController@get');
    Route::get('courses/{resource}', 'CourseController@load');

    //lectures start
    Route::get('lectures', 'LectureController@get');
    Route::get('lectures/{resource}', 'LectureController@load');
    Route::post('lectures/store', 'LectureController@store');
    Route::post('lectures/update/{resource}', 'LectureController@update');
    Route::post('lectures/delete/{resource}', 'LectureController@destroy');

    //assignments start
    Route::get('assignments', 'AssignmentController@get');
    Route::post('assignments/store', 'AssignmentController@store');
    Route::post('assignments/update/{resource}', 'AssignmentController@update');
    Route::post('assignments/delete/{resource}', 'AssignmentController@destroy');

    //questions start
    Route::get('questions', 'QuestionController@get');
    Route::post('questions/store', 'QuestionController@store');
    Route::post('questions/update/{resource}', 'QuestionController@update');
    Route::post('questions/delete/{resource}', 'QuestionController@destroy');

    //questions start
    Route::get('question-categorys', 'QuestionCategoryController@get');
    Route::get('question-levels', 'MainController@getQuestionLevel');
    Route::get('question-types', 'MainController@getQuestionType');
    Route::post('question-categorys/store', 'QuestionCategoryController@store');
    Route::post('question-categorys/update/{resource}', 'QuestionCategoryController@update');
    Route::post('question-categorys/delete/{resource}', 'QuestionCategoryController@destroy');
});

Route::post('login', 'AuthController@login');
Route::post('forget-password', 'AuthController@forgetPassword');

