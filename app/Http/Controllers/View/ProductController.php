<?php

namespace App\Http\Controllers\View;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Entity\Category;
use App\Entity\Product;
use App\Entity\ProductContent;
use App\Entity\ProductImages;
use Log;

class ProductController extends Controller
{
   /*商品分类列表*/
   public function toCategory()
   {
   	Log::info('进入商品分类列表');//写入日志
   	$categorys = Category::whereNull('parent_id')->get();
    return view('product.category')->with('categorys',$categorys);
   }

   /*商品列表*/
   public function toProduct($category_id)
   {
   	Log::info('进入商品列表');//写入日志
   	$products = Product::where('category_id',$category_id)->get();
      return view('product.product_list')->with('products',$products);
   }

   /*商品详情*/
   public function toProductContent(Request $request,$product_id)
   {
      Log::info('进入商品列表');//写入日志
      /*商品信息*/
   	$product = Product::find($product_id);
   	$p_content = ProductContent::where('product_id',$product_id)->first();
   	$p_images = ProductImages::where('product_id',$product_id)->get();
      /*购物车信息*/
      $shop_cart = $request->cookie('shop_cart');
      $shop_cart_arr = $shop_cart!= null ? explode(',', $shop_cart) : array();
      $count = 0;
      foreach ($shop_cart_arr as $value) {
         $index = strpos($value, ':');
         if(substr($value, 0, $index) == $product_id){
            $count = ((int) substr($value, $index+1));
            break;
         }
      }
   	return view('product.product_content')->with('product',$product)
   										  ->with('p_content',$p_content)
   										  ->with('p_images',$p_images)
                                   ->with('count',$count);
   }

}
