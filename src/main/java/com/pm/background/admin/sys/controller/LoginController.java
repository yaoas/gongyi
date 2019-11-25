package com.pm.background.admin.sys.controller;
import com.google.code.kaptcha.Constants;
import com.pm.background.admin.common.shiro.ShiroUtils;
import com.pm.background.admin.common.util.KaptchaUtil;
import com.pm.background.admin.sys.dto.LoginForm;
import com.pm.background.common.utils.R;
import org.apache.shiro.authc.*;
import org.apache.shiro.subject.Subject;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@RestController
public class LoginController  {



    @PostMapping(value = "/login")
    @ResponseBody
    public Object login(@RequestBody LoginForm loginForm, HttpServletRequest request){

        if(new KaptchaUtil().isKaptchaOnOff()){
            String kaptcha = ShiroUtils.getKaptcha(Constants.KAPTCHA_SESSION_KEY);
            if(!loginForm.getCaptcha().equalsIgnoreCase(kaptcha)){
                return R.fail("验证码不正确");
            }
        }
        try{
            Subject subject = ShiroUtils.getSubject();
            UsernamePasswordToken token = new UsernamePasswordToken(loginForm.getUsername(), loginForm.getPassword());
            subject.login(token);
            System.err.println(request.getSession().getId());
            ShiroUtils.getUserEntity().setSessionId(request.getSession().getId());
        }catch (UnknownAccountException e) {
            return R.fail(e.getMessage());
        }catch (IncorrectCredentialsException e) {
            return R.fail("账号或者密码不正确");
        }catch (LockedAccountException e) {
            return R.fail("账号已被锁定,请联系管理员");
        }catch (AuthenticationException e) {
            return R.fail("账户验证失败");
        }
        return R.ok(ShiroUtils.getUserEntity());
    }



    /**
     * 退出
     */
    @GetMapping(value = "/logout")
    @ResponseBody
    public Object logout() {
        ShiroUtils.logout();
        return R.ok("退出成功");
    }






}
