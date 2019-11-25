package com.pm.background.welfare.core.active.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.pm.background.welfare.core.active.entity.DudecationRatio;
import com.pm.background.welfare.core.active.entity.MyEcoupon;
import com.pm.background.welfare.core.active.entity.OrderInfo;

import java.util.List;
import java.util.Map;

public interface OrderInfoService extends IService<OrderInfo> {
    int updatePaymentStatus(OrderInfo orderInfo);

    List<MyEcoupon> selectMyCoupon(MyEcoupon myEcoupon);

    int insertMycoupon(MyEcoupon myEcoupon);

    int useMyCoupon(String id);

    int updateMyPonStatus(Long id);
    //查询兑换比例
    float selectRatio(Long id);
    //查询兑换比例列表
    List<DudecationRatio> selectRatioPage(DudecationRatio dudecationRatio);
    //删除兑换比例
    int deleteRatio(Long id);

    //退款失败接口
    int failOut(OrderInfo orderInfo);
    //分页查询交易比
    Map statisticsPricePage(OrderInfo orderInfo);

}
