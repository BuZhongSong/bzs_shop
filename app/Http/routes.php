<?php

Route::get('/', function () {
	//return Member::all();
    return view('login');
});

Route::group(['middleware' => ['web']], function () {
/*用户模块-----------------------------------------------------------------------------*/

	/*----view-----*/
		/*会员*/
			Route::get('/login', 'View\MemberController@toLogin');
			Route::get('/register', 'View\MemberController@toRegister');
		/*会员*/		
	/*----view-----*/

	/*----service----*/
		/*会员*/
			/*验证码*/
			Route::get('/service/validate_code/create', 'Service\ValidateController@create');
			/*短信验证码*/
			Route::post('/service/validate_phone/send', 'Service\ValidateController@sendSMS');
			/*登录与注册数据处理*/
			Route::post('/service/login', 'Service\MemberController@login');
			Route::post('/service/register', 'Service\MemberController@register');
			/*邮箱验证与账号激活*/
			Route::any('/service/validate_email', 'Service\MemberController@validateEmail');
		/*会员*/
	/*----service----*/

/*用户模块-----------------------------------------------------------------------------*/


/*商品模块-----------------------------------------------------------------------------*/

	/*----view-----*/
		/*商品分类列表*/
		Route::get('/category', 'View\ProductController@toCategory');
		/*商品分类列表*/
		Route::get('/product/category_id/{category_id}', 'View\ProductController@toProduct');
		/*商品详情*/
		Route::get('/product/{product_id}', 'View\ProductController@toProductContent');
	/*----view-----*/

	/*----service----*/
		/*商品类别*/
		Route::get('/service/category/parent_id/{parent_id}', 'Service\ProductController@getCategoryByParentId');
		/*商品类别*/
	/*----service----*/

	/*----购物车----*/
		Route::get('/service/cart/add/{product_id}', 'Service\CartController@addToCart');
	/*----购物车----*/
/*商品模块-----------------------------------------------------------------------------*/



});
