<?php

namespace App\Http\Controllers\Service;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Entity\Product;
use App\Models\M3Result;

class CartController extends Controller
{
   public function addToCart(Request $request,$product_id)
   {
   	$shop_cart = $request->cookie('shop_cart');
   	$shop_cart_arr != null ? explode(',', $shop_cart) : array();
   	
   	
   	$m3_result->status = 0;
	$m3_result->message = '返回成功';
	$m3_result->categorys = $categorys;
	return $m3_result->toJson();
   }
}
