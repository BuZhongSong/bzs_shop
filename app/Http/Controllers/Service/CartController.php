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
   	$shop_cart_arr = $shop_cart!= null ? explode(',', $shop_cart) : array();
   	$count = 1;
   	foreach ($shop_cart_arr as &$value) {
         $index = strpos($value, ':');
         if(substr($value, 0, $index) == $product_id){
            $count = ((int) substr($value, $index+1)) + 1;
            $value = $product_id.':'.$count;
            break;
         }
      }
      if($count == 1){
         array_push($shop_cart_arr, $product_id.':'.$count);
      }
      $m3_result = new M3Result;//实例化返回数据
   	$m3_result->status = 0;
   	$m3_result->message = '添加成功';
   	return response($m3_result->toJson())->withcookie('shop_cart', implode(',', $shop_cart_arr));
   }
}
