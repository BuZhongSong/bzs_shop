<?php

namespace App\Http\Controllers\View;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Entity\Product;
use App\Entity\CartItem;

class CartController extends Controller
{
   public function toCart(Request $request)
   {
   	$cart_items = array();
	$shop_cart = $request->cookie('shop_cart');
	$shop_cart_arr = $shop_cart!= null ? explode(',', $shop_cart) : array();
	$count = 1;
	foreach ($shop_cart_arr as $key => $value) {
	 	$index = strpos($value, ':');
	 	$cart_item = new CartItem;
	 	$cart_item->id = $key;
	 	$cart_item->product_id = substr($value, 0, $index);
	 	$cart_item->count = (int) substr($value, $index+1);
	 	$cart_item->product = Product::find($cart_item->product_id);
	 	if($cart_item->product != null){
	 		array_push($cart_items, $cart_item);
	 	}
	}
	//print_r($cart_items);die;
	return view('cart.cart')->with('cart_items',$cart_items);
   }

   public function toRegister()
   {
   	return view('member.register');
   }

}
