package com.pm.background.admin.sys.controller;
import com.alibaba.fastjson.JSON;
import com.pm.background.admin.common.shiro.ShiroUtils;
import com.pm.background.admin.sys.dto.WeChatLoginForm;
import com.pm.background.admin.sys.entity.User;
import com.pm.background.admin.sys.service.IUserService;
import com.pm.background.common.utils.R;
import com.pm.background.common.utils.WeixinUtil;
import com.pm.background.welfare.core.active.entity.UserIntegral;
import com.pm.background.welfare.core.active.service.SignInfoService;
import org.apache.shiro.authc.*;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/smallApp/weChat")
public class WeChatLoginController {

@Autowired
private IUserService userService;
    @Autowired
    private SignInfoService signInfoService;

    @PostMapping(value = "/weChatLogin")
    @ResponseBody
    public Object weChatLogin(@RequestBody WeChatLoginForm weChatLoginForm, HttpServletRequest request){
        String url = "https://api.weixin.qq.com/sns/jscode2session";
        String requestMethod ="GET";
        String outputStr = "appid=wx77830ab10aa179d1&&secret=246fbffe06c5e77d9cb671c18767ce02&&js_code="+weChatLoginForm.getJsCode()+"&&grant_type=authorization_code";
        String result = WeixinUtil.httpsRequest(url,requestMethod,outputStr);
        Map mapTypes = JSON.parseObject(result);
        System.out.println(mapTypes.get("openid"));
        weChatLoginForm.setOpenId(String.valueOf(mapTypes.get("openid")));
        Map returnMap =new HashMap();
        returnMap.put("openid",mapTypes.get("openid"));
      if(mapTypes.get("openid")!=null && !"".equals(mapTypes.get("openid"))){
          User user = userService.byAccountGetId(weChatLoginForm.getOpenId());
          if(user == null){
              //进行注册
              User user2 = new User();
              user2.setAccount(weChatLoginForm.getOpenId());
              user2.setName(weChatLoginForm.getUsername());
              user2.setStatus(1);
              user2.setAvatar(weChatLoginForm.getAvatar());
              userService.saveUser(user2);
              User users = userService.byAccountGetId(weChatLoginForm.getOpenId());
              UserIntegral userIntegral = new UserIntegral();
              userIntegral.setUserId(users.getId());
              userIntegral.setUserIntegral(0f);
              signInfoService.insertIntegral(userIntegral);
              Subject subject = ShiroUtils.getSubject();
              UsernamePasswordToken token = new UsernamePasswordToken(users.getAccount(), weChatLoginForm.getPassword());
              subject.login(token);
              ShiroUtils.getUserEntity().setSessionId(request.getSession().getId());
              returnMap.put("realNameCertification",users.getRealNameCertification());
              //ShiroUtils.getUserEntity().setSessionId(request.getSession().getId());
              // request.getSession().setAttribute("userId",ShiroUtils.getUserEntity().getId());
          }else {
              Subject subject = ShiroUtils.getSubject();
              UsernamePasswordToken token = new UsernamePasswordToken(user.getAccount(), weChatLoginForm.getPassword());
              subject.login(token);
              System.err.println(request.getSession().getId());
              ShiroUtils.getUserEntity().setSessionId(request.getSession().getId());
              returnMap.put("realNameCertification",user.getRealNameCertification());
              //ShiroUtils.getUserEntity().setSessionId(request.getSession().getId());
              //request.getSession().setAttribute("userId",ShiroUtils.getUserEntity().getId());
          }
      }

        return R.ok(returnMap);
    }
}
