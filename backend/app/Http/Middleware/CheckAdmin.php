<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class CheckAdmin
{
    public function handle($request, Closure $next)
    {

        if (Auth::check() && Auth::user()->role === 'admin') {
            return $next($request);
        }


        return redirect()->route('tasks.index')
            ->with('error', 'You do not have permission to access that page.');
    }
}
