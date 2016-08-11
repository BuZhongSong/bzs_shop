<?php

namespace App\Entity;

use Illuminate\Database\Eloquent\Model;

class Category extends Model{
	/**
     * 关联到模型的数据表
     *
     * @var string
     */
    protected $table = 'abon_category';
    protected $primaryKey = 'id';
    //
}