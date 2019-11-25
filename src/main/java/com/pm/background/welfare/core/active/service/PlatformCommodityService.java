package com.pm.background.welfare.core.active.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.pm.background.welfare.core.active.entity.PlatformCommodity;

import java.util.List;

public interface PlatformCommodityService extends IService<PlatformCommodity> {
    /**
     * 更改商品溢价或者积分
     */
    int updatePremium(PlatformCommodity platformCommodity);
    /**
     * 小程序端限制条数查询
     */
    List<PlatformCommodity> selectListByLimitSize(PlatformCommodity platformCommodity);
}
