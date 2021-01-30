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


    Route::get('notifications', function(){
		return DB::table('notifications')->where('user_id', request()->user->id)->get();
    });


    //exams start
    Route::get('exams', 'ExamController@get');
    Route::get('exams/{resource}', 'ExamController@load');
    Route::get('exams/students/{resource}', 'ExamController@getStudents');
    Route::post('exams/assign/{resource}', 'ExamController@assign');
    Route::get('exams/groups/{resource}', 'ExamController@groups');
    Route::get('exams/blanks/{resource}', 'ExamController@blanks');
    Route::post('exams/store', 'ExamController@store');
    Route::post('exams/update/{resource}', 'ExamController@update');
    Route::post('exams/delete/{resource}', 'ExamController@destroy');

    //student_assignments start
    Route::get('student-assignments', 'StudentAssignmentController@getStdAssignments');
    Route::post('update-assignments', 'StudentAssignmentController@updateAssignments');


});
Route::post('doctor/login', 'AuthController@login');
Route::post('doctor/forget-password', 'AuthController@forgetPassword');


