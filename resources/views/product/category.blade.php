@extends('layouts.master')

@include('componet.loading')

@section('title', '商品类别')

@section('content')
<div class="weui_cells_title">选择书籍类别</div>
<div class="weui_cells weui_cells_split">
  <div class="weui_cell weui_cell_select">
    <div class="weui_cell_bd weui_cell_primary">
      <select class="weui_select" name="category">
        @foreach($categorys as $category)
          <option value="{{$category->id}}">{{$category->name}}</option>
        @endforeach
      </select>
    </div>
  </div>
</div>


<div class="weui_cells weui_cells_access">

</div>
@endsection

@section('my-js')
<script type="text/javascript">
  _getCategory();
  $('.weui_select').change(function(){
    _getCategory();
  })

  function _getCategory(argument) {
    var parent_id = $('.weui_select option:selected').val();
    $.ajax({
      type: "get",
      url: '/service/category/parent_id/' + parent_id,
      dataType: 'json',
      cache: false,
      success: function(data) {
        $('.weui_cells_access').html('');
        for (var i = 0; i < data.categorys.length; i++) {
          var next = '/product/category_id/'+data.categorys[i].id;
          var node = ' <a href="'+next+'" class="weui_cell">'+
                        '<div class="weui_cell_bd weui_cell_primary">'+
                          '<p>'+data.categorys[i].name+'</p>'+
                        '</div>'+                        
                      '</a>'; 
          $('.weui_cells_access').append(node);
        }

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