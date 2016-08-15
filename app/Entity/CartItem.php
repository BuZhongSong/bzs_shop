<?php

namespace App\Entity;

use Illuminate\Database\Eloquent\Model;

class CartItem extends Model{
	/**
     * 关联到模型的数据表
     *
     * @var string
     */
    protected $table = 'abon_cart_item';
    protected $primaryKey = 'id';
    //
}