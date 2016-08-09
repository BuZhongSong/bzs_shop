<?php

namespace App\Entity;

use Illuminate\Database\Eloquent\Model;

class TempPhone extends Model{
	/**
     * 关联到模型的数据表
     *
     * @var string
     */
    protected $table = 'abon_temp_phone';
    protected $primaryKey = 'id';
    
    public $timestamps = false;
}