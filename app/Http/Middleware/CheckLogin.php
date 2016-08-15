<?php

namespace App\Http\Middleware;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Tool\Common\urlTool;
use App\Entity\Member;
use Closure;

class CheckLogin
{
    public function handle($request, Closure $next, $guard = null)
    {
    	$Member = new Member;
   	 	$member = $Member->getMember($request);	
    	$urlTool = new urlTool;
    	$http_referer = $urlTool->getCurrentUrl();
        if (empty($member) ) {
            return redirect('/login?return_url='.urlencode($http_referer));
        }
        return $next($request);
    }
}
