<?php

namespace App\Http\Controllers\Service;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Tool\Validate\ValidateCode;
use App\Tool\SMS\SendTemplateSMS;
use App\Entity\TempPhone;
use App\Models\M3Result;

class ValidateController extends Controller
{
   /*生成验证码*/
   public function create()
   {
    $ValidateCode = new ValidateCode;
    $ValidateCode->doimg();
   }

   /*发送注册短信验证码*/
   public function sendSMS(Request $request)
   {
    $m3Result = new M3Result;//实例化返回数据
    $phone = $request->input('phone','');
    /*验证手机号码*/
    if($phone==''){
      $m3Result->status = 1;
      $m3Result->message = "手机号不能为空";
      return $m3Result->toJson();
    }
    $SendTemplateSMS = new SendTemplateSMS;
    $code = $SendTemplateSMS->random(5,1);//生成随机数字验证码
    $re = $SendTemplateSMS->sendMessage("normal","注册验证","{\"code\":\"$code\",\"product\":\"会员\"}",$phone,"SMS_6691238");//发送短信
    $result = $re->result;
    if($result->success){
      $TempPhone = new TempPhone;
      $TempPhone->phone = $phone;
      $TempPhone->code = $code;
      $TempPhone->deadline = date('Y-m-d',time() + 60*60 );
      $TempPhone->save();
      $m3Result->status = 0;
      $m3Result->message = "发送成功";
    }else{
      $m3Result->status = 1;
      $msg = $re->sub_msg;
      $msg = (array)$msg;
      $m3Result->message = $msg[0];
    }
    return $m3Result->toJson();
   }

}
