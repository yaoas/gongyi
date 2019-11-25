package com.pm.background.welfare.core.active.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.pm.background.welfare.core.active.entity.CommoditySpecification;

public interface CommoditySpecificationService extends IService<CommoditySpecification> {
    /**
     * 批量更改溢价或者积分
     * @param commoditySpecification
     * @return
     */
    int updateCommodityPriceOrIntegral(CommoditySpecification commoditySpecification);
    /**
     * 根据商品id删除规格
     */
    int deleteByCommodutyId(String id);

}
