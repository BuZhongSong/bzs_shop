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
   public function create(Request $request)
   {
    $validateCode = new ValidateCode;
    $request->session()->put('validate_code', $validateCode->getCode());
    return $validateCode->doimg();
   }

   /*发送注册短信验证码*/
   public function sendSMS(Request $request)
   {
    $m3_result = new M3Result;//实例化返回数据
    $phone = $request->input('phone','');
    /*验证手机号码*/
    if($phone==''){
      $m3_result->status = 1;
      $m3_result->message = "手机号不能为空";
      return $m3_result->toJson();
    }
    $SendTemplateSMS = new SendTemplateSMS;
    $code = $SendTemplateSMS->random(6,1);//生成随机数字验证码
    $re = $SendTemplateSMS->sendMessage("normal","注册验证","{\"code\":\"$code\",\"product\":\"会员\"}",$phone,"SMS_6691238");//发送短信
    $result = $re->result;
    if($result->success){
      $tempPhone = TempPhone::where('phone',$phone)->first();
      if($tempPhone == null){/*如果没有当前号码的验证码记录则添加一条新的记录反之更新已有记录*/
        $tempPhone = new TempPhone;
      }      
      $tempPhone->phone = $phone;
      $tempPhone->code = $code;
      $tempPhone->deadline = date('Y-m-d H-i-s',time() + 60*60 );
      $tempPhone->save();
      $m3_result->status = 0;
      $m3_result->message = "发送成功";
    }else{
      $m3_result->status = 1;
      $msg = $re->sub_msg;
      $msg = (array)$msg;
      $m3_result->message = $msg[0];
    }
    return $m3_result->toJson();
   }

}
