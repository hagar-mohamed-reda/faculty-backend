<?php

namespace App\Http\Middleware;

use Closure;
use App\User;
use DB;
use Modules\Admin\Entities\Student;

class StudentAuth
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    { 
        $user = null;
        if (isset($request->json()->all()["api_token"]) || $request->api_token) {
            $apiToken = isset($request->json()->all()["api_token"])? $request->json()->all()["api_token"] : $request->api_token;
            $user = Student::where('api_token', $apiToken)->first();

            $request->user = $user;
        }
        if (!$user) {
            return redirect('api/api_auth'); 
        }
        return $next($request);
    }
}
