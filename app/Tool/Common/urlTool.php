<?php
namespace App\Tool\Common;

/**
* url工具
*/
class urlTool
{
	/*获取当前网址*/
	public function getCurrentUrl()
	{
		return 'http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
	}
}