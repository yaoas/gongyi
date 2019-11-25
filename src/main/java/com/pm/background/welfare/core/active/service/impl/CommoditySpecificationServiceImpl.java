package com.pm.background.welfare.core.active.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pm.background.welfare.core.active.dao.CommoditySpecificationMapper;
import com.pm.background.welfare.core.active.entity.CommoditySpecification;
import com.pm.background.welfare.core.active.service.CommoditySpecificationService;
import org.springframework.stereotype.Service;


@Service
public class CommoditySpecificationServiceImpl extends ServiceImpl<CommoditySpecificationMapper, CommoditySpecification> implements CommoditySpecificationService {

    @Override
    public int updateCommodityPriceOrIntegral(CommoditySpecification commoditySpecification) {
        return baseMapper.updateCommodityPriceOrIntegral(commoditySpecification);
    }

    @Override
    public int deleteByCommodutyId(String id) {
        return baseMapper.deleteByCommodutyId(id);
    }
}
