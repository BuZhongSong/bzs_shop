<?php

namespace App\Tool\SMS;

/**
* 短信类
*/
class SendTemplateSMS
{
    private $appkey = '23338679';// 可替换为您的沙箱环境应用的AppKey
    private $secretKey = '86cab9804701d5a98079de6c77b0653d'; // 可替换为您的沙箱环境应用的AppSecret
    private $c;

	public function __construct()
	{
		/*$c = new TopClient;
		$c->appkey = $this->appkey; // 可替换为您的沙箱环境应用的AppKey
		$c->secretKey = $this->secretKey; // 可替换为您的沙箱环境应用的AppSecret
		$this->c = $c;*/
	}
	private function random($length, $numeric = 0)
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
	private function sendmessage($Type='normal', $FreeSignName,$Param,$RecNum,$TemplateCode)
	{
		echo "fcuk";die;
		/*$req = new AlibabaAliqinFcSmsNumSendRequest;
		$req->setExtend($Extend);
		$req->setSmsType($Type);
		$req->setSmsFreeSignName($FreeSignName);
		$req->setSmsParam($Param);
		$req->setRecNum($RecNum);
		$req->setSmsTemplateCode($TemplateCode);
		$resp = $this->c->execute($req);
		return $resp;*/
	}
}
