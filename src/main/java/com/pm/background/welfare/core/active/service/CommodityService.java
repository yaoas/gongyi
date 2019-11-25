package com.pm.background.welfare.core.active.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.pm.background.welfare.core.active.entity.Commodity;
import com.pm.background.welfare.core.active.entity.IntegralCommodity;

import java.util.List;

public interface CommodityService extends IService<Commodity> {

    boolean deleteCommodity(Long id);

    Commodity getActiveInfo(Long id);

    /**
     * 商品上架
     */
    int upCommodity(Commodity commodity);

    /**
     * 商品下架
     */
    int downCommodity(Commodity commodity);

    /**
     * 查询单价
     */
    double byIdFindPrice(Long id);

    /**
     * 根据商品id查询活动id
     */
    String deleteByCommodityIdGetActiveId(Long id);

    /**
     * 添加积分商品
     *
     * @param integralCommodity
     * @return
     */
    int insertIntegralCommodity(IntegralCommodity integralCommodity);

    //查看积分商品列表
    List<IntegralCommodity> selectIntegralCommodity(IntegralCommodity integralCommodity);

    //更新积分商品
    int updateIntegralCommodity(IntegralCommodity integralCommodity);

    //删除积分商品
    int deleteIntegralCommodity(Long id);
    //更改商品数量
    int updateCommudityNumber(Commodity commodity);

}
