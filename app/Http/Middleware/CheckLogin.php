<?php

namespace App\Http\Middleware;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Closure;

class CheckLogin
{
    public function handle($request, Closure $next, $guard = null)
    {

    	$member = $request->session()->get('member');
        if ($member == '') {
            return redirect('/login');
        }
        return $next($request);
    }
}
