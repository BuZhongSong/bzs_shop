<?php

namespace App\Http\Controllers\View;

use App\Http\Controllers\Controller;
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

   public function toProductContent($product_id)
   {
   	$product = Product::find($product_id);
   	$p_content = ProductContent::where('product_id',$product_id)->first();
   	$p_images = ProductImages::where('product_id',$product_id)->get();
   	return view('product.product_content')->with('product',$product)
   										  ->with('p_content',$p_content)
   										  ->with('p_images',$p_images);
   }

}
