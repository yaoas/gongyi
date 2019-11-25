package com.pm.background.welfare.core.active.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pm.background.welfare.core.active.dao.CommodityMapper;
import com.pm.background.welfare.core.active.entity.Commodity;
import com.pm.background.welfare.core.active.entity.IntegralCommodity;
import com.pm.background.welfare.core.active.service.CommodityService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommodityServiceImpl extends ServiceImpl<CommodityMapper, Commodity> implements CommodityService {


    @Override
    public boolean deleteCommodity(Long id) {
        Integer count = baseMapper.deleteById(id);
        if (count > 0) {
            return true;
        } else {
            return false;
        }

    }

    /**
     * 展示、查看
     *
     * @param id
     * @return
     */
    @Override
    public Commodity getActiveInfo(Long id) {
        Commodity ac = this.getById(id);
        return ac;
    }

    /**
     * 商品上架
     */
    @Override
    public int upCommodity(Commodity commodity) {

        return baseMapper.upCommodity(commodity);
    }

    /**
     * 根据商品id获取活动id
     *
     * @param id
     * @return
     */
    @Override
    public String deleteByCommodityIdGetActiveId(Long id) {
        return baseMapper.deleteByCommodityIdGetActiveId(id);
    }

    /**
     * 查询单价
     */
    @Override
    public double byIdFindPrice(Long id) {
        return baseMapper.byIdFindPrice(id);
    }

    /**
     * 商品下架
     */
    @Override
    public int downCommodity(Commodity commodity) {
        return baseMapper.downCommodity(commodity);
    }

    /***
     * 添加积分商品
     * @param integralCommodity
     * @return
     */
    @Override
    public int insertIntegralCommodity(IntegralCommodity integralCommodity) {
        return baseMapper.insertIntegralCommodity(integralCommodity);
    }

    @Override
    public List<IntegralCommodity> selectIntegralCommodity(IntegralCommodity integralCommodity) {
        return baseMapper.selectIntegralCommodity(integralCommodity);
    }

    @Override
    public int updateIntegralCommodity(IntegralCommodity integralCommodity) {
        return baseMapper.updateIntegralCommodity(integralCommodity);
    }

    @Override
    public int deleteIntegralCommodity(Long id) {
        return baseMapper.deleteIntegralCommodity(id);
    }

    @Override
    public int updateCommudityNumber(Commodity commodity) {
        return baseMapper.updateCommudityNumber(commodity);
    }
}
