package com.pm.background.welfare.core.active.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.pm.background.welfare.core.active.entity.RealNameAuthentication;

public interface RealNameAuthenticationService extends IService<RealNameAuthentication> {
    boolean agreeRealName(RealNameAuthentication realNameAuthentication);


}
