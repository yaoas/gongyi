package com.pm.background.welfare.core.active.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.pm.background.welfare.core.active.entity.PlatformCommodity;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface PlatformCommodityMapper extends BaseMapper<PlatformCommodity> {
    /**
     * 更改商品溢价或者积分
     * @param platformCommodity
     * @return
     */
    int updatePremium(PlatformCommodity platformCommodity);
    /**
     * 小程序端限制条数查询
     */
    List<PlatformCommodity> selectListByLimitSize(PlatformCommodity platformCommodity);
}
