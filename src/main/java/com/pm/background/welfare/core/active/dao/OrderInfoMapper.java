package com.pm.background.welfare.core.active.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.pm.background.welfare.core.active.entity.DudecationRatio;
import com.pm.background.welfare.core.active.entity.MyEcoupon;
import com.pm.background.welfare.core.active.entity.OrderInfo;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface OrderInfoMapper extends BaseMapper<OrderInfo> {
    int updatePaymentStatus(OrderInfo orderInfo);

    int updateMyPonStatus(Long id);

    List<MyEcoupon> selectMyCoupon(MyEcoupon myEcoupon);

    int insertMycoupon(MyEcoupon myEcoupon);

    int useMyCoupon(String id);
    //删除兑换比例
    int deleteRatio(Long id);
    //查询兑换比例
    float selectRatio(Long id);
    //查询兑换比例列表
    List<DudecationRatio> selectRatioPage(DudecationRatio dudecationRatio);
    //退款失败接口
    int failOut(OrderInfo orderInfo);
    //分页查询交易比
    List<OrderInfo> statisticsPricePage(OrderInfo orderInfo);
    //统计总金额
    OrderInfo statisticsPrice(OrderInfo orderInfo);
    //退款成本及金额
     OrderInfo returnStatisticsPrice(OrderInfo orderInfo);
     //查询总条数
    int sumCount(OrderInfo orderInfo);
}
