<?php
namespace App\Tool\SMS;
include "/message/TopSdk.php";
use App\Tool\SMS\message\top\TopClient;
use App\Tool\SMS\message\top\request\AlibabaAliqinFcSmsNumSendRequest;
/**
* 短信类
*/
class SendTemplateSMS
{
    private $appkey = '23338679';// 可替换为您的沙箱环境应用的AppKey
    private $secretKey = '86cab9804701d5a98079de6c77b0653d'; // 可替换为您的沙箱环境应用的AppSecret
    private $c;
    private $req;

	public function __construct()
	{ 
		$this->c = new TopClient;
		$this->c->appkey = $this->appkey;
		$this->c->secretKey = $this->secretKey;
		$this->req= new AlibabaAliqinFcSmsNumSendRequest;
	}
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
			$chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz';
			$max = strlen($chars) - 1;
			for($i = 0; $i < $length; $i++)
			{
				$hash .= $chars[mt_rand(0, $max)];
			}
		}
		return $hash;
	}

	//发送函数
	public function sendMessage($Type='normal', $FreeSignName,$Param,$RecNum,$TemplateCode)
	{
		$this->req->setSmsType($Type);
		$this->req->setSmsFreeSignName($FreeSignName);
		$this->req->setSmsParam($Param);
		$this->req->setRecNum($RecNum);
		$this->req->setSmsTemplateCode($TemplateCode);
		$resp = $this->c->execute($this->req);
		return $resp;
	}
}
