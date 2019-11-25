package com.pm.background.welfare.core.active.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.pm.background.welfare.core.active.entity.*;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface RealNameAuthenticationMapper extends BaseMapper<RealNameAuthentication> {

    boolean agreeRealName(RealNameAuthentication realNameAuthentication);


}
