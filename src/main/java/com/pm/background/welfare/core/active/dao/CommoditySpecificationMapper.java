package com.pm.background.welfare.core.active.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.pm.background.welfare.core.active.entity.CommoditySpecification;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface CommoditySpecificationMapper extends BaseMapper<CommoditySpecification> {
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
