<?php

use Illuminate\Support\Facades\Route;

/*
  |--------------------------------------------------------------------------
  | Web Routes
  |--------------------------------------------------------------------------
  |
  | Here is where you can register web routes for your application. These
  | routes are loaded by the RouteServiceProvider within a group which
  | contains the "web" middleware group. Now create something great!
  |
 */

// Route::get('/', 'DashboardController@index');

Auth::routes();
// Route::get('login', 'LoginController@getLogin');
// Route::posr('login', 'LoginController@login');

Route::group(['middleware' => 'auth:web'], function() {
    Route::get('/', 'DashboardController@index')->name('dashboard');
    Route::resource('nationalities', 'nationalityController');
    Route::resource('roles', 'RoleController');
    Route::resource('cities', 'CityController');
    Route::resource('countries', 'CountryController');
    Route::resource('governments', 'GovernmentController');
    Route::get('government/{country_id}', 'GovernmentController@getGovernments');
    Route::resource('languages', 'LanguageController');
    Route::resource('profile', 'UserProfileController');
    Route::put('update-password/{user_id}', 'UserProfileController@updatePassword')->name('update-password');
    Route::resource('relations', 'RelativeRelationController');
    
    
    Route::post('setting/update/{setting}', 'SettingController@update')->name('SettingUpdate');
    
});


Route::get('theme/set', function(){
    if (Theme::isDark()) {
        Theme::setTheme(Theme::$LIGHT);
    } else {
        Theme::setTheme(Theme::$DARK);
    }
    
    return back();
});


Route::get('theme/get', function(){
    echo Theme::getTheme();
});


Route::get('test', function(){
    //return \App\Permission::where('group_id', 8)->pluck('name')->toArray();
});