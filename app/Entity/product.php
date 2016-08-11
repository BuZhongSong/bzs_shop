<?php

namespace App\Entity;

use Illuminate\Database\Eloquent\Model;

class Product extends Model{
	/**
     * 关联到模型的数据表
     *
     * @var string
     */
    protected $table = 'abon_product';
    protected $primaryKey = 'id';
    //
}