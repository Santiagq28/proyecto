<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductoController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\CategoriaController;
use App\Http\Controllers\GaleriaController;


Route::get('/', function () {
    return view('welcome');
});

Route::resource('productos', ProductoController::class); 

Route::resource('categorias', CategoriaController::class);
Route::get('cambioestadocategoria',[CategoriaController::class, 'cambioestadocategoria'])->name('cambioestadocategoria');

Route::resource('galerias', GaleriaController::class);
Route::get('cambioestadogaleria',[CategoriaController::class, 'cambioestadogaleria'])->name('cambioestadogaleria');


Route::middleware(['auth'])->group(function () {
    Route::get('/home',[HomeController::class, 'home']);
    Route::get('/categorias',[CategoriaController::class, 'categorias']);
    Route::get('/galerias',[GaleriaController::class, 'galerias']);
    });
/*
Ruta Básica
    Route::get('/about', function () {
        return 'Acerca de nosotros';
    });


Ruta con Parametro
    Route::get('/user/{id}', function ($id) {
        return 'ID de usuario: ' . $id;
    });


Ruta con Nombre
    Route::get('/contacto', function () {
        return 'Página de contacto';
    })->name('contacto');


Ruta con restricción de expresiones regulares
    - Un numero exactamente de 3 digitos:
    Route::get('/user/{id}', function ($id) {
    return 'ID de usuario: ' . $id;
    })->where('id', '[0-9]{3}');
    - Un numero entre 1 y 3 digitos:
    Route::get('/user/{id}', function ($id) {
        return 'ID de usuario: ' . $id;
    })->where('id', '[0-9]{1,3}');


Rutas de Grupo
    Route::prefix('admin')->group(function () {
        Route::get('/', function () {
        return 'Panel de administración';
        });
        Route::get('/users', function () {
        return 'Lista de usuarios';
        });
    });

*/

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
