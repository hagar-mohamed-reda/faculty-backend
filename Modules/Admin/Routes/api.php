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

    Route::get('levels', 'LevelController@index');
    Route::get('departments', 'DepartmentController@index');
    Route::get('divisions', 'DivisionController@index');
    Route::get('specializations', 'SpecializationController@index');
    Route::get('degrees', 'DegreeController@index');
    Route::get('academic-years', 'AcademicYearController@index');

Route::group(['middleware' => 'api_auth'], function () {

    //levels start
    Route::post('levels/store', 'LevelController@store');
    Route::post('levels/update/{resource}', 'LevelController@update');
    Route::post('levels/delete/{resource}', 'LevelController@destroy');

    //departments start
    Route::post('departments/store', 'DepartmentController@store');
    Route::post('departments/update/{resource}', 'DepartmentController@update');
    Route::post('departments/delete/{resource}', 'DepartmentController@destroy');

    //divisions start
    Route::post('divisions/store', 'DivisionController@store');
    Route::post('divisions/update/{resource}', 'DivisionController@update');
    Route::post('divisions/delete/{resource}', 'DivisionController@destroy');

    //faculty start
    Route::get('facultys', 'FacultyController@index');
    Route::post('facultys/store', 'FacultyController@store');
    Route::post('facultys/update/{resource}', 'FacultyController@update');
    Route::post('facultys/delete/{resource}', 'FacultyController@destroy');

    //specializations start
    Route::post('specializations/store', 'SpecializationController@store');
    Route::post('specializations/update/{resource}', 'SpecializationController@update');
    Route::post('specializations/delete/{resource}', 'SpecializationController@destroy');

    //degrees start
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
    Route::post('academic-years/store', 'AcademicYearController@store');
    Route::post('academic-years/update/{resource}', 'AcademicYearController@update');
    Route::post('academic-years/delete/{resource}', 'AcademicYearController@destroy');

     // translation start
     Route::post('translations/update', 'TranslationController@update');

    //notifications start
    Route::get("notifications", "NotificationController@getNotifications");

    //students start
    Route::get('students', 'AdminStudentController@get');
    Route::post('students/store', 'AdminStudentController@store');
    Route::post('students/update/{resource}', 'AdminStudentController@update');
    Route::post('students/delete/{resource}', 'AdminStudentController@destroy');
    Route::post('students/import', 'AdminStudentController@import');
    Route::get('students/export', 'AdminStudentController@export');
    Route::get('students/import-file', 'AdminStudentController@getImportTemplateFile');
    Route::get('students/archive', 'AdminStudentController@getArchive');
    Route::post('students/restore/{resource}', 'AdminStudentController@restore');

    //doctors start
    Route::get('doctors', 'DoctorController@get');
    Route::post('doctors/store', 'DoctorController@store');
    Route::post('doctors/update/{resource}', 'DoctorController@update');
    Route::post('doctors/delete/{resource}', 'DoctorController@destroy');
    Route::post('doctors/import', 'DoctorController@import');
    Route::get('doctors/export', 'DoctorController@export');
    Route::get('doctors/import-file', 'DoctorController@getImportTemplateFile');
    Route::get('doctors/archive', 'DoctorController@getArchive');
    Route::post('doctors/restore/{resource}', 'DoctorController@restore');

    //courses start
    Route::get('courses', 'CourseController@get');
    Route::get('courses/{resource}', 'CourseController@show');
    Route::post('courses/store', 'CourseController@store');
    Route::post('courses/update/{resource}', 'CourseController@update');
    Route::post('courses/delete/{resource}', 'CourseController@destroy');
    Route::post('courses/import', 'CourseController@import');
    Route::get('course/export', 'CourseController@export');
    Route::get('course/import-file', 'CourseController@getImportTemplateFile');
    Route::get('course/archive', 'CourseController@getArchive');
    Route::post('courses/restore/{resource}', 'CourseController@restore');

    //course-groups start
    Route::get('course-groups', 'CourseGroupController@get');
    Route::post('course-groups/store', 'CourseGroupController@store');
    Route::post('course-groups/update/{resource}', 'CourseGroupController@update');
    Route::post('course-groups/delete/{resource}', 'CourseGroupController@destroy');

    //student-registers start
    Route::get('student-registers', 'RegisterStudentController@get');
    Route::post('student-registers/register', 'RegisterStudentController@register');
    Route::post('student-registers/import', 'RegisterStudentController@import');
    Route::get('student-registers/import-file', 'RegisterStudentController@getImportTemplateFile');

    //doctor-registers start
    Route::get('doctor-registers', 'RegisterDoctorController@get');
    Route::post('doctor-registers/register', 'RegisterDoctorController@register');

    //users start
    Route::get('users', 'UserController@get');
    Route::post('users/store', 'UserController@store');
    Route::post('users/update/{resource}', 'UserController@update');
    Route::post('users/delete/{resource}', 'UserController@destroy');

    //roles start
    Route::get('roles', 'RoleController@get');
    Route::post('roles/store', 'RoleController@store');
    Route::post('roles/update/{resource}', 'RoleController@update');
    Route::post('roles/assign/{resource}', 'RoleController@updatePermissions');
    Route::post('roles/delete/{resource}', 'RoleController@destroy');


    // permissions
    Route::get('permissions', 'PermissionController@index');
    Route::post('permissions/store', 'PermissionController@store');
    Route::post('permissions/update/{resource}', 'PermissionController@update');
    Route::post('permissions/delete/{resource}', 'PermissionController@destroy');

    // permissions_groups
    Route::get('permission_groups', 'PermissionGroupController@index');
    Route::post('permission_groups/store', 'PermissionGroupController@store');
    Route::post('permission_groups/update/{resource}', 'PermissionGroupController@update');
    Route::post('permission_groups/delete/{resource}', 'PermissionGroupController@destroy');

});

Route::post('login', 'AuthController@login');
Route::post('forget-password', 'AuthController@forgetPassword');

Route::get('translations', 'TranslationController@index');
Route::get('translations/get', 'TranslationController@get');
