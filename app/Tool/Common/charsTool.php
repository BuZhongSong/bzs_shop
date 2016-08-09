<?php
namespace App\Tool\Common;

/**
* 字符工具
*/
class charsTool
{
	/*随机生成字符串*/
	public function random($length, $numeric = 0)
	{
		PHP_VERSION < '4.2.0' && mt_srand((double)microtime() * 1000000);
		if($numeric)
		{
			$hash = sprintf('%0'.$length.'d', mt_rand(0, pow(10, $length) - 1));
		}
		else
		{
			$hash = '';
			$chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz1234567890';
			$max = strlen($chars) - 1;
			for($i = 0; $i < $length; $i++)
			{
				$hash .= $chars[mt_rand(0, $max)];
			}
		}
		return $hash;
	}
}