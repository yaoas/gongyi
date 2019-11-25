package com.pm.background.smallApp.controller;

import com.pm.background.admin.sys.entity.User;
import com.pm.background.admin.sys.entity.UserFeedback;
import com.pm.background.admin.sys.service.IUserService;
import com.pm.background.common.utils.R;
import com.pm.background.welfare.core.active.entity.UserIntegral;
import com.pm.background.welfare.core.active.service.SignInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


@RequestMapping("/smallApp/sys/user")
@RestController
public class SmallAppUserController {

    @Autowired
    private IUserService userService;

    @Autowired
    private SignInfoService signInfoService;


    /**
     * 认证接口
     * @param user(realNameCertification,volunteerCertification,enterpriseCertification其中一个值)
     * 1代表认证 2 未认证
     * @return
     */
    @RequestMapping(value = "/userCertification")
    public  Object userCertification(@RequestBody User user){
        int i=0;
        User users = userService.byAccountGetId(user.getOpenId());
        Long userId = users.getId();
        user.setId(userId);
        if(user.getRealNameCertification()!=null && !"".equals(user.getRealNameCertification())){
           i = userService.realNameCertification(user);
        }
        if(user.getVolunteerCertification()!=null && !"".equals(user.getVolunteerCertification())){
            i = userService.volunteerCertification(user);
        }
        if(user.getEnterpriseCertification()!=null && !"".equals(user.getEnterpriseCertification())){
            i = userService.enterpriseCertification(user);
        }
        if(i > 0){
            return  R.ok("认证成功");
        }else{
            return  R.ok("认证失败");
        }
    }

    /**
     * 个人信息查询接口
     */
    @RequestMapping(value = "/queryPersonalInformation")
    public Object queryPersonalInformation(String openId){
        if(openId==null||"".equals(openId)){
            R.fail("请先登录");
        }
        User user = userService.byAccountGetId(openId);
        Long userId = user.getId();
        String userHour = userService.sumUserHour(userId);
        UserIntegral integral=signInfoService.selectIntegralUser(userId);
        if(integral ==null||"".equals(integral)){
            user.setUserIntegral(0f);
        }else {
            user.setUserIntegral(integral.getUserIntegral());
        }
        if(userHour==null||"".equals(userHour)){
            user.setActiveHour(0f);
        }else {
            user.setActiveHour(Float.valueOf(userHour));
        }
        return R.ok(user);
    }

    @RequestMapping(value = "/userFeedback")
    public Object userFeedback(@RequestBody UserFeedback userFeedback){
        int i = userService.insertUserFeedback(userFeedback);
        if(i > 0){
            return  R.ok("反馈成功");
        }else{
            return  R.ok("反馈失败");
        }
    }





}