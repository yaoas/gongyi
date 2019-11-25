package com.pm.background.welfare.core.active.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.pm.background.welfare.core.active.entity.ButtShop;

import java.util.List;

public interface ButtShopService extends IService<ButtShop> {

    /**
     * 同步商品信息
     */
    boolean synchronizationButtShop(List<ButtShop> list);
    /**
     * 更改商品溢价或者积分
     */
    int updatePremium(ButtShop buttShop);

    /**
     * 小程序端限制条数查询
     */
    List<ButtShop> selectListByLimitSize(ButtShop buttShop);
}
