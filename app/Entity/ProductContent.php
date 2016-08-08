<?php

namespace App\Entity;

use Illuminate\Database\Eloquent\Model;

class ProductContent extends Model{
	/**
     * 关联到模型的数据表
     *
     * @var string
     */
    protected $table = 'abon_product_content';
    protected $primaryKey = 'id';
    //
}