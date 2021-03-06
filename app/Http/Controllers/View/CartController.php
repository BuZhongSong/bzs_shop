<?php

namespace App\Http\Controllers\View;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Entity\Product;
use App\Entity\Member;
use App\Entity\CartItem;

class CartController extends Controller
{
   public function __construct(Request $request)
   {
   		$Member = new Member;
   	 	$this->member = $Member->getMember($request);
        $this->member_id = $this->member['id'];
   }

   public function toCart(Request $request)
   {
   	$cart_items = array();
	/*同步购物车*/
	$cartItem = new CartItem;
	$shop_cart_arr = $cartItem->getCart($request);
	$cartItem->syncCart($request,$shop_cart_arr,$this->member_id);

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
	return view('cart.cart')->with('cart_items',$cart_items);
   }

}
