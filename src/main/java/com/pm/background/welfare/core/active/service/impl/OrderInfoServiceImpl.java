package com.pm.background.welfare.core.active.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pm.background.welfare.core.active.dao.OrderInfoMapper;
import com.pm.background.welfare.core.active.entity.DudecationRatio;
import com.pm.background.welfare.core.active.entity.MyEcoupon;
import com.pm.background.welfare.core.active.entity.OrderInfo;
import com.pm.background.welfare.core.active.service.OrderInfoService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class OrderInfoServiceImpl extends ServiceImpl<OrderInfoMapper, OrderInfo> implements OrderInfoService {
    @Override
    public int updatePaymentStatus(OrderInfo orderInfo) {
        return baseMapper.updatePaymentStatus(orderInfo);
    }

    @Override
    public List<MyEcoupon> selectMyCoupon(MyEcoupon myEcoupon) {
        return baseMapper.selectMyCoupon(myEcoupon);
    }

    @Override
    public int insertMycoupon(MyEcoupon myEcoupon) {
        return baseMapper.insertMycoupon(myEcoupon);
    }

    @Override
    public int useMyCoupon(String id) {
        return baseMapper.useMyCoupon(id);
    }

    @Override
    public int updateMyPonStatus(Long id) {
        return baseMapper.updateMyPonStatus(id);
    }

    @Override
    public float selectRatio(Long id) {
        return baseMapper.selectRatio(id);
    }

    @Override
    public List<DudecationRatio> selectRatioPage(DudecationRatio dudecationRatio) {
        return baseMapper.selectRatioPage(dudecationRatio);
    }

    @Override
    public int deleteRatio(Long id) {
        return baseMapper.deleteRatio(id);
    }

    @Override
    public int failOut(OrderInfo orderInfo) {
        return baseMapper.failOut(orderInfo);
    }
    //分页查询交易比
    @Override
    @Transactional
    public Map statisticsPricePage(OrderInfo orderInfo) {
        Map map = new HashMap();
        if(orderInfo.getPaymentStatus()==null||"".equals(orderInfo.getPaymentStatus())){
            orderInfo.setPaymentStatus("1");
            //统计已经支付的不包含退货的总金额包含总成本，总购买价
            OrderInfo statisticsMoney = baseMapper.statisticsPrice(orderInfo);
            //退货的总金额
            OrderInfo returnMoney = baseMapper.returnStatisticsPrice(orderInfo);
            //统计交易比
            List<OrderInfo> orderInfoList = baseMapper.statisticsPricePage(orderInfo);
            int sumCount = baseMapper.sumCount(orderInfo);
            map.put("statisticsMoney",statisticsMoney);
            map.put("returnMoney",returnMoney);
            map.put("orderInfoList",orderInfoList);
            map.put("sumCount",sumCount);
        }else {
           if("1".equals(orderInfo.getPaymentStatus())){
               //统计已经支付的不包含退货的总金额包含总成本，总购买价
               OrderInfo statisticsMoney = baseMapper.statisticsPrice(orderInfo);
               //退货的总金额
               OrderInfo returnMoney = baseMapper.returnStatisticsPrice(orderInfo);
               //统计交易比
               List<OrderInfo> orderInfoList = baseMapper.statisticsPricePage(orderInfo);
               int sumCount = baseMapper.sumCount(orderInfo);
               map.put("statisticsMoney",statisticsMoney);
               map.put("returnMoney",returnMoney);
               map.put("orderInfoList",orderInfoList);
               map.put("sumCount",sumCount);
           }else {
               //统计已经支付的不包含退货的总金额包含总成本，总购买价
               orderInfo.setCostCash("0");
               orderInfo.setPreperPriceAll("0");
               //退货的总金额
               OrderInfo returnMoney = baseMapper.returnStatisticsPrice(orderInfo);
               //统计交易比
               List<OrderInfo> orderInfoList = baseMapper.statisticsPricePage(orderInfo);
               int sumCount = baseMapper.sumCount(orderInfo);
               map.put("statisticsMoney",orderInfo);
               map.put("returnMoney",returnMoney);
               map.put("orderInfoList",orderInfoList);
               map.put("sumCount",sumCount);
           }
        }


        return map;
    }

}
