<?php

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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/crimes/agradecimento','CrimesController@agradecimento');
Route::get('/crimes/violencia_domestica','CrimesController@violencia_domestica');
Route::get('/crimes/violencia_domestica_orientacao','CrimesController@violencia_domestica_orientacao');
Route::get('/guia/crime','GuiaController@crime');
Route::resource('guia', 'GuiaController');
Route::post('contact/gravaconsulta', 'ContactController@gravaconsulta');
Route::resource('contact', 'ContactController');