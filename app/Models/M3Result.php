<?php 

namespace App\Models;

/**
* 返回数据的处理
*/
class M3Result
{
	public $status;
	public $message;

	public function toJson()
	{
		return json_encode($this,JSON_UNESCAPED_UNICODE);
	}
}