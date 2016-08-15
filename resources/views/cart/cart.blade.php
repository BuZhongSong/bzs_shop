@extends('layouts.master')

@include('componet.loading')

@section('title', '商品列表')

@section('content')
<div class="weui_cells_title">复选列表项</div>
<div class="weui_cells weui_cells_checkbox">
@foreach($cart_items as $cart_item)
    <label for="{{$cart_item->product->id}}" class="weui_cell weui_check_label">
        <div class="weui_cell_hd">
            <input type="checkbox" checked="checked" id="{{$cart_item->product->id}}" name="cart_item" class="weui_check">
            <i class="weui_icon_checked"></i>
        </div>
        <div class="weui_cell_hd"><img style="width:90px;margin-right:5px" alt="{{$cart_item->product->name}}" src="{{$cart_item->product->preview}}"></div>
        <div class="weui_cell_bd weui_cell_primary">
            <p>{{$cart_item->product->name}}</p>
            <p>数量：{{$cart_item->count}}</p>
            <p>总计：<span class="bk_price">¥ {{$cart_item->product->price*$cart_item->count}}</span></p>
        </div>
    </label>
@endforeach
</div>
<div class="bk_fix_bottom">
	<div class="bk_half_are">
		<button class="weui_btn weui_btn_primary" onclick="_toCharge();">结算</button>
	</div>
    <div class="bk_half_are">
    	<button class="weui_btn weui_btn_default" onclick="_onDelete();">删除</button>
	</div>
</div>
@endsection

@section('my-js')
<script type="text/javascript">
	$('input:checkbox[name=cart_item]').click(function () {
		var checked = $(this).attr('checked');
		if(checked == 'checked') {
			$(this).attr('checked',false);
			$(this).next().removeClass('weui_icon_checked');
			$(this).next().addClass('weui_icon_unchecked');
		}else {

			$(this).attr('checked',true);
			$(this).next().removeClass('weui_icon_unchecked');
			$(this).next().addClass('weui_icon_checked');
		}
	})
	function _onDelete() {
		var product_ids_arr = [];
		$('input:checkbox[name=cart_item]').each(function () {
			if($(this).attr('checked') == 'checked') {
				product_ids_arr.push($(this).attr('id'));
			}
		})
		$.ajax({
	      type: "get",
	      url: '/service/cart/del',
	      dataType: 'json',
	      cache: false,
	      data:{product_ids: product_ids_arr+''},
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
	        location.reload();
	      },
	      error: function(xhr, status, error) {
	        console.log(xhr);
	        console.log(status);
	        console.log(error);
	      }
	    });
	}
</script>
@endsection