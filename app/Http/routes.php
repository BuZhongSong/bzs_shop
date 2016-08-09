<?php

/*
|--------------------------------------------------------------------------
| Routes File
|--------------------------------------------------------------------------
|
| Here is where you will register all of the routes in an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
use App\Entity\Member;

Route::get('/', function () {
	//return Member::all();
    return view('login');
});


/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| This route group applies the "web" middleware group to every route
| it contains. The "web" middleware group is defined in your HTTP
| kernel and includes session state, CSRF protection, and more.
|
*/

Route::group(['middleware' => ['web']], function () {
	/*登录与注册*/
	Route::get('/login', 'View\MemberController@toLogin');
	Route::get('/register', 'View\MemberController@toRegister');
    /*验证码*/
	Route::get('/service/validate_code/create', 'Service\ValidateController@create');
	/*短信验证码*/
	Route::get('/service/validate_phone/send', 'Service\ValidateController@sendSMS');
	/*登录与注册数据处理*/
	Route::post('/service/login', 'Service\MemberController@login');
	Route::post('/service/register', 'Service\MemberController@register');
});
