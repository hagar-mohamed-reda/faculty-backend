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

    //questions start
    Route::get('questions', 'QuestionController@get');
    Route::post('questions/store', 'QuestionController@store');
    Route::post('questions/update/{resource}', 'QuestionController@update');
    Route::post('questions/delete/{resource}', 'QuestionController@destroy');

    //questions start
    Route::get('question_categorys', 'QuestionCategoryController@get');
    Route::post('question_categorys/store', 'QuestionCategoryController@store');
    Route::post('question_categorys/update/{resource}', 'QuestionCategoryController@update');
    Route::post('question_categorys/delete/{resource}', 'QuestionCategoryController@destroy');
});

Route::post('login', 'AuthController@login');
Route::post('forget-password', 'AuthController@forgetPassword');

