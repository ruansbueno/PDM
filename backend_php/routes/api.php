<?php

use Illuminate\Support\Facades\Route;

Route::get('/test', function () {
    return response()->json(['status' => 'API funcionando!']);
});

Route::get('/run-migrate', function () {
    Artisan::call('migrate');
    return Artisan::output();
});