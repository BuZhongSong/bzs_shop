<?php

namespace App\Http\Controllers\Service;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Entity\Product;
use App\Entity\Member;
use App\Entity\CartItem;
use App\Models\M3Result;

class CartController extends Controller
{
   public function __construct(Request $request)
   {
      $Member = new Member;
      $this->member = $Member->getMember($request);
      $this->member_id = $this->member['id'];
   }
   /*添加商品到购物车*/
   public function addToCart(Request $request,$product_id)
   {  
      $cartItem = new CartItem;
      $shop_cart_arr = $cartItem->getCart($request);
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
      /*同步购物车*/
      if($this->member['id']) {
         $cartItem = new CartItem;
         $cartItem->syncCart($request,$shop_cart_arr,$this->member_id);
      }
      
   	return response($m3_result->toJson())->withcookie('shop_cart', implode(',', $shop_cart_arr));
   }

   /*删除购物车商品*/
   public function deleteCart(Request $request)
   {
      $product_ids = $request->input('product_ids','');
      if($product_ids == '') {
         $m3_result = new M3Result;//实例化返回数据
         $m3_result->status = 1;
         $m3_result->message = '请选择要删除的商品';
         return $m3_result->toJson();
      }
      $product_ids_arr = explode(',', $product_ids);
      $shop_cart = $request->cookie('shop_cart');
      $shop_cart_arr = $shop_cart!= null ? explode(',', $shop_cart) : array();
      foreach ($shop_cart_arr as $key => $value) {
         $index = strpos($value, ':');
         $product_id = substr($value, 0, $index);
         if(in_array($product_id, $product_ids_arr)) {
            array_splice($shop_cart_arr, $key,1);
            continue;
         }
      }
      $m3_result = new M3Result;//实例化返回数据
      $m3_result->status = 0;
      $m3_result->message = '删除成功';
      return response($m3_result->toJson())->withcookie('shop_cart', implode(',', $shop_cart_arr));
   }

}
