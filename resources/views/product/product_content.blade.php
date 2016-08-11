@extends('layouts.master')

@include('componet.loading')

@section('title', $product->name)

@section('content')
<link rel="stylesheet" href="/css/swiper.css">

<div class="swiper-container">
  <div class="swiper-wrapper">
  @foreach($p_images as $img)
	  <div class="swiper-slide orange-slide"><img src="{{$img->image_path}}"></div>
  @endforeach
  </div>
  <div class="pagination"></div>
</div>

<div class="weui_cells_title">
	<p class="bk_title ">{{$product->name}}</p>
    <p class="bk_price ">¥ {{$product->price}}</p>
</div>
<div class="weui_cells weui_cells_access">
    <a href="javascript:;" class="weui_cell">
        <div class="weui_cell_bd weui_cell_primary">
          <p class="bk_summary"> {{$product->summary}}</p>
        </div>
    </a>
</div>
<div class="weui_cells_title">详细介绍</div>
<div class="weui_cells pcontent" >
	<div class="weui_cell" >
		<p>{!!$p_content->content!!}</p>
	</div>
</div>
<div class="bk_fix_bottom">
	<div class="bk_half_are">
		<button class="weui_btn weui_btn_primary" onclick="addToCart();">加入购物车</button>
	</div>
    <div class="bk_half_are">
    	<button class="weui_btn weui_btn_default" href="javascript:;">结算(<span id="cart_num" class="m3price">5</span>)</button>
	</div>
</div>
@endsection
@section('my-js')
<script src="/js/swiper.min.js"></script>
<script>
	var mySwiper = new Swiper('.swiper-container',{
		pagination: '.pagination',
		loop:true,
		grabCursor: true,
		paginationClickable: true
	})
	$('.arrow-left').on('click', function(e){
		e.preventDefault()
		mySwiper.swipePrev()
	})
	$('.arrow-right').on('click', function(e){
		e.preventDefault()
		mySwiper.swipeNext()
	})

	function addToCart(argument) {
		// body...
	}
</script>
@endsection