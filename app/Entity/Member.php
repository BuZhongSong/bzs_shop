<?php

namespace App\Entity;

use Illuminate\Database\Eloquent\Model;

class Member extends Model{
	/**
     * 关联到模型的数据表
     *
     * @var string
     */
    protected $table = 'abon_member';
    protected $primaryKey = 'id';
    
    /*验证电话号码*/
   /* public function checkPhone($phone)
    {
    	# code...
    }*/

    /*通过用户Id查找会员信息*/
    public function getMemberById($member_id)
    {
        if ($member_id)
        {
            $memberinfo = Member::find($member_id);
            if (empty($memberinfo['id']))
            {
                return array();
            }
            return $memberinfo;
        }        
    }

    /*获取当前登录用户的信息*/
    public function getMember($request)
    {
        $memberinfo = $request->session()->get('member');
        if (empty($memberinfo['id']))
        {
            return array();
        }
        unset($memberinfo['password']);
        unset($memberinfo['password_salt']);
        return $memberinfo;
    }
}