<?php

namespace App\Entity;

use Illuminate\Database\Eloquent\Model;
use App\Entity\Product;

class CartItem extends Model{
	/**
	* 关联到模型的数据表
	*
	* @var string
	*/
	protected $table = 'abon_cart_item';
	protected $primaryKey = 'id';
	
	/*从cookie获取购物车信息*/
	public function getCart($request)
	{
		$cart_items = array();
		$shop_cart = $request->cookie('shop_cart');
		$shop_cart_arr = $shop_cart!= null ? explode(',', $shop_cart) : array();
		return $shop_cart_arr;
	}

	/*同步购物车*/
	public function syncCart($request,$shop_cart_arr,$member_id)
	{
		$cart_items = CartItem::where('member_id',$member_id)->get();
		$cart_items_arr = array();		
		foreach ($shop_cart_arr as $value) {
			$index = strpos($value, ':');
			$product_id = substr($value, 0, $index);
			$count = (int) substr($value, $index+1);
			/*判断数据库中 离线购物车中是否存在product_id*/
			$exist = false;
			foreach ($cart_items as $temp) {
				if($temp->product_id == $product_id) {
					if($temp->count < $count) {
					   $temp->count = $count;
					   $temp->save();
					}
					$exist = true;
					break;
				}
			}
			if($exist == false) {
				$cart_item = new CartItem;
				$cart_item->member_id = $member_id;
				$cart_item->product_id = $product_id;
				$cart_item->count = $count;
				$cart_item->save();
				array_push($cart_items_arr, $cart_item);
			}			
		}
		/*为每个对象添加产品附加对象便于显示*/
		foreach ($cart_items as $cart_item) {
			$cart_item->product = Product::find($cart_item->product_id);
		}
		return $cart_items_arr;
	}
}