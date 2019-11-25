package com.pm.background.welfare.core.active.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.pm.background.welfare.core.active.entity.RealNameAuthentication;
import com.pm.background.welfare.core.active.entity.VolunteerAuthentication;

public interface VolunteerAuthenticationService extends IService<VolunteerAuthentication> {
    boolean agreeVolunteerName(VolunteerAuthentication volunteerAuthentication);
}
