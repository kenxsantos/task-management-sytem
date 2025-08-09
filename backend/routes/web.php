<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');
