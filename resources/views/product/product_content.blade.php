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
		<button class="weui_btn weui_btn_primary" onclick="_add_ToCart();">加入购物车</button>
	</div>
    <div class="bk_half_are">
    	<button class="weui_btn weui_btn_default" onclick="_ToCart();">查看购物车(<span id="cart_num" class="m3price">{{$count}}</span>)</button>
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

	function _add_ToCart(argument) {
	    var product_id = "{{$product->id}}";
	    $.ajax({
	      type: "get",
	      url: '/service/cart/add/' + product_id,
	      dataType: 'json',
	      cache: false,
	      success: function(data) {
	        if(data == null) {
	          $('.bk_toptips').show();
	          $('.bk_toptips span').html('服务端错误');
	          setTimeout(function() {$('.bk_toptips').hide();}, 2000);
	          return;
	        }
	        if(data.status != 0) {
	          $('.bk_toptips').show();
	          $('.bk_toptips span').html(data.message);
	          setTimeout(function() {$('.bk_toptips').hide();}, 2000);
	          return;
	        }

	        var num = $('#cart_num').html();
	        if(num == '') num = 0;
	        $('#cart_num').html(Number(num) + 1);
	      },
	      error: function(xhr, status, error) {
	        console.log(xhr);
	        console.log(status);
	        console.log(error);
	      }
	    });
	}

	function _ToCart(argument) {
		location.href = '/cart'
	}
</script>
@endsection