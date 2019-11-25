package com.pm.background.admin.sys.dto;

import lombok.Data;

/**
 * @description: 登陆实体类
 * @author: hs
 * @create: 2018-10-31 15:45:10
 **/
@Data
public class LoginForm {

    private String username;
    private String password;
    private String captcha;
}
