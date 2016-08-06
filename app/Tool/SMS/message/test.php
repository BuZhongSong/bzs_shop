<?php
header("Content-type: text/html; charset=utf-8");
include "TopSdk.php";
 
//将下载到的SDK里面的TopClient.php的$gatewayUrl的值改为沙箱地址:http://gw.api.tbsandbox.com/router/rest
//正式环境时需要将该地址设置为：http://gw.api.taobao.com/router/rest
 
$c = new TopClient;
$c->appkey = "23338679"; // 可替换为您的沙箱环境应用的AppKey
$c->secretKey = "86cab9804701d5a98079de6c77b0653d"; // 可替换为您的沙箱环境应用的AppSecret

$req = new AlibabaAliqinFcSmsNumSendRequest;
$req->setExtend("123456");
$req->setSmsType("normal");
$req->setSmsFreeSignName("大鱼测试");
$req->setSmsParam("{\"customer\":\"1234\"}");
$req->setRecNum("18708156629");
$req->setSmsTemplateCode("SMS_6691241");
$resp = $c->execute($req);
print_r($resp);
?>