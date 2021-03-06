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
    return view('index');
});

Route::get('/index', function () {
    return view('index');
});

Route::get('/login', function(){
	return view('login');
});
Route::get('/categorias', function(){
	return view('categorias');
});
Route::get('/register', function(){
	return view('register');
});
Route::get('/faq', function(){
	return view('faq');
});

Route::get('logout', 'LoginController@logout');

Route::get('/cuerdas', 'CuerdaController@index');
Route::get('/cuerda/crear', 'CuerdaController@create');
Route::post('/cuerda/crear', 'CuerdaController@store');
Route::get('/cuerda/{cuerda}', 'CuerdaController@show');
Route::get('/cuerda/{cuerda}/edit', 'CuerdaController@edit');
Route::put('/cuerda/{cuerda}/edit', 'CuerdaController@update');
Route::delete('/cuerda/{cuerda}/delete', 'CuerdaController@destroy');




Route::get('/cuerda', function(){
	return view('categoria-cuerda');
});
Route::get('/viento', function(){
	return view('categoria-viento');
});
Route::get('/percucion', function(){
	return view('categoria-percucion');
});


Route::get('/perfil', function(){
	return view('perfil');
})->middleware('auth');






Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
