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
    Route::prefix('')->group(function() {  

        // servicecs routes
        Route::get('students', 'StudentController@index');
        Route::get('students/{id}', 'StudentController@get');
        Route::post('students/store', 'StudentController@store');
        Route::post('students/update/{resourcc}', 'StudentController@update');
        Route::post('students/delete/{resourcc}', 'StudentController@destroy'); 

        Route::post('students/enroll/{id}', 'StudentController@saveToStudents'); 
 
    });
});
