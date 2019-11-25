package com.pm.background.welfare.core.active.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pm.background.welfare.core.active.dao.RealNameAuthenticationMapper;
import com.pm.background.welfare.core.active.entity.RealNameAuthentication;
import com.pm.background.welfare.core.active.service.RealNameAuthenticationService;
import org.springframework.stereotype.Service;

@Service
public class RealNameAuthenticationServiceImpl extends ServiceImpl<RealNameAuthenticationMapper, RealNameAuthentication> implements RealNameAuthenticationService {
    @Override
    public boolean agreeRealName(RealNameAuthentication realNameAuthentication) {
        return baseMapper.agreeRealName(realNameAuthentication);
    }


}
