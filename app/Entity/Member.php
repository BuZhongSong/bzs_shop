<?php

namespace App\Entity;

use Illuminate\Database\Eloquent\Model;

class Member extends Model{
	/**
     * 关联到模型的数据表
     *
     * @var string
     */
    protected $table = 'abon_member';
    protected $primaryKey = 'id';
    
    /*验证电话号码*/
   /* public function checkPhone($phone)
    {
    	# code...
    }*/
}