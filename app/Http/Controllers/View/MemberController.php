<?php

namespace App\Http\Controllers\View;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Entity\Member;
use App\Entity\CartItem;

class MemberController extends Controller
{
   private $member = null;
   private $member_id = null;

   public function __construct(Request $request)
   {
   		$Member = new Member;
   	 	$this->member = $Member->getMember($request);
   	 	if (empty($this->member))
        {
        	return redirect('/login');
        }
        $this->member_id = $this->member['id'];
   }

   public function toLogin(Request $request)
   {
   		//判断是否是登陆状态
        if (!empty($this->member_id))
        {
            return redirect('/member');
        }
		$return_url = $request->input('return_url','');
		$cartItem = new CartItem;
		$cartItem->syncCart($request,$this->member_id);
		return view('member.login')->with('return_url',urldecode($return_url));
   }

   public function toRegister()
   {
   		//判断是否是登陆状态
        if (!empty($this->member_id))
        {
            return redirect('/member');
        }
   		return view('member.register');
   }


}
