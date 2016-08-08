<?php

namespace App\Http\Controllers\Service;

use App\Http\Controllers\Controller;
use App\Tool\Validate\ValidateCode;
use App\Tool\SMS\SendTemplateSMS;

class ValidateController extends Controller
{
   public function create()
   {
       $ValidateCode = new ValidateCode;
       $ValidateCode->doimg();
   }

   public function sendSMS()
   {
       $SendTemplateSMS = new SendTemplateSMS;
       $SendTemplateSMS->sendmessage();
   }
}
