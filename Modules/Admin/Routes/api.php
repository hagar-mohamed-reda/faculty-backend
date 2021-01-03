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

    //divisions start
    Route::get('divisions', 'DivisionController@index');
    Route::post('divisions/store', 'DivisionController@store');
    Route::post('divisions/update/{resource}', 'DivisionController@update');
    Route::post('divisions/delete/{resource}', 'DivisionController@destroy');

    //faculty start
    Route::get('facultys', 'FacultyController@index');
    Route::post('facultys/store', 'FacultyController@store');
    Route::post('facultys/update/{resource}', 'FacultyController@update');
    Route::post('facultys/delete/{resource}', 'FacultyController@destroy');

    //specializations start
    Route::get('specializations', 'SpecializationController@index');
    Route::post('specializations/store', 'SpecializationController@store');
    Route::post('specializations/update/{resource}', 'SpecializationController@update');
    Route::post('specializations/delete/{resource}', 'SpecializationController@destroy');

    //degrees start
    Route::get('degrees', 'DegreeController@index');
    Route::post('degrees/store', 'DegreeController@store');
    Route::post('degrees/update/{resource}', 'DegreeController@update');
    Route::post('degrees/delete/{resource}', 'DegreeController@destroy');

    //degree-maps start
    Route::get('degree-maps', 'DegreeMapController@index');
    Route::post('degree-maps/store', 'DegreeMapController@store');
    Route::post('degree-maps/update/{resource}', 'DegreeMapController@update');
    Route::post('degree-maps/delete/{resource}', 'DegreeMapController@destroy');

    //research-degree-maps start
    Route::get('research-degree-maps', 'ResearchDegreeMapController@index');
    Route::post('research-degree-maps/store', 'ResearchDegreeMapController@store');
    Route::post('research-degree-maps/update/{resource}', 'ResearchDegreeMapController@update');
    Route::post('research-degree-maps/delete/{resource}', 'ResearchDegreeMapController@destroy');

    //academic-years start
    Route::get('academic-years', 'AcademicYearController@index');
    Route::post('academic-years/store', 'AcademicYearController@store');
    Route::post('academic-years/update/{resource}', 'AcademicYearController@update');
    Route::post('academic-years/delete/{resource}', 'AcademicYearController@destroy');

     // translation start
     Route::get('translation', 'TranslationController@index');
     Route::get('translation/get', 'TranslationController@get');
     Route::post('translation/update', 'TranslationController@update');

});

Route::post('login', 'AuthController@login');
Route::post('forget-password', 'AuthController@forgetPassword');
