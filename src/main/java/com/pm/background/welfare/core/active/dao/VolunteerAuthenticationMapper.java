package com.pm.background.welfare.core.active.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.pm.background.welfare.core.active.entity.VolunteerAuthentication;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface VolunteerAuthenticationMapper extends BaseMapper<VolunteerAuthentication> {
boolean agreeVolunteerName(VolunteerAuthentication volunteerAuthentication);
}
