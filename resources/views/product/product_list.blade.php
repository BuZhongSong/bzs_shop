@extends('layouts.master')

@include('componet.loading')

@section('title', '商品列表')

@section('content')
<div class="weui_cells weui_cells_access">
@foreach($products as $product)
    <a href="/product/{{$product->id}}" class="weui_cell">
        <div class="weui_cell_hd"><img style="width:110px;margin-right:5px" alt="{{$product->name}}" src="{{$product->preview}}"></div>
        <div class="weui_cell_bd weui_cell_primary">
          <p class="bk_title ">{{$product->name}}</p>
          <p class="bk_price ">¥ {{$product->price}}</p>
          <p class="bk_summary"> {{$product->summary}}</p>
        </div>
        <div class="weui_cell_ft"></div> 
    </a>
@endforeach
</div>
@endsection

@section('my-js')
@endsection