package com.pm.background.welfare.core.active.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.pm.background.welfare.core.active.entity.OrderInfo;

import java.util.Map;

public interface RefundService extends IService<OrderInfo> {


    /**
     * 退款接口
     */
   Map returnMoney(OrderInfo orderInfo);
}
