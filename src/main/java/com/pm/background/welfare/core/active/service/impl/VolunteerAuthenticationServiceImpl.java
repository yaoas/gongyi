package com.pm.background.welfare.core.active.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pm.background.welfare.core.active.dao.RealNameAuthenticationMapper;
import com.pm.background.welfare.core.active.dao.VolunteerAuthenticationMapper;
import com.pm.background.welfare.core.active.entity.RealNameAuthentication;
import com.pm.background.welfare.core.active.entity.VolunteerAuthentication;
import com.pm.background.welfare.core.active.service.RealNameAuthenticationService;
import com.pm.background.welfare.core.active.service.VolunteerAuthenticationService;
import org.springframework.stereotype.Service;

@Service
public class VolunteerAuthenticationServiceImpl extends ServiceImpl<VolunteerAuthenticationMapper, VolunteerAuthentication> implements VolunteerAuthenticationService {
    @Override
    public boolean agreeVolunteerName(VolunteerAuthentication volunteerAuthentication) {
        return baseMapper.agreeVolunteerName(volunteerAuthentication);
    }
}
