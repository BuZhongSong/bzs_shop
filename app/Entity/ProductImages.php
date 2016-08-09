<?php

namespace App\Entity;

use Illuminate\Database\Eloquent\Model;

class ProductImages extends Model{
	/**
     * 关联到模型的数据表
     *
     * @var string
     */
    protected $table = 'abon_product_images';
    protected $primaryKey = 'id';
    //
}