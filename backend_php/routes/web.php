<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/run-migrate', function () {
    Artisan::call('migrate');
    return Artisan::output();
});

Route::get('/install-api', function () {
    Artisan::call('install:api', ['--passport' => true]);
    return Artisan::output();
});
