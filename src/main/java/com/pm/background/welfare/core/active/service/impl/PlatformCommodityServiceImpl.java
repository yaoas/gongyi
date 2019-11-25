package com.pm.background.welfare.core.active.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pm.background.welfare.core.active.dao.PlatformCommodityMapper;
import com.pm.background.welfare.core.active.entity.ActiveInfo;
import com.pm.background.welfare.core.active.entity.PlatformCommodity;
import com.pm.background.welfare.core.active.service.PlatformCommodityService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PlatformCommodityServiceImpl extends ServiceImpl<PlatformCommodityMapper, PlatformCommodity> implements PlatformCommodityService {

    /**
     * //更改商品溢价或者积分
     * @param platformCommodity
     * @return
     */
    @Override
    public int updatePremium(PlatformCommodity platformCommodity) {
        int i =1;
        if(platformCommodity.getId()!=null ){
            PlatformCommodity newPlatformCommodity =  baseMapper.selectById(platformCommodity.getId());
            if(platformCommodity.getPremium()!=null && !"".equals(platformCommodity.getPremium())){
                newPlatformCommodity.setPremium(platformCommodity.getPremium());
                float orgPrice = Float.valueOf(newPlatformCommodity.getGoodsPrice()) * (1f+Float.valueOf(platformCommodity.getPremium())/100f);
                newPlatformCommodity.setMinPrice(String.format("%.2f", orgPrice));
                i = baseMapper.updatePremium(newPlatformCommodity);
            }else {
                newPlatformCommodity.setIntegral(platformCommodity.getIntegral());
                i = baseMapper.updatePremium(newPlatformCommodity);
            }

        }else {
            QueryWrapper qw = new QueryWrapper<ActiveInfo>();
            List<PlatformCommodity> list = baseMapper.selectList(qw);
            for(PlatformCommodity newPlatformCommodity : list){
                if(platformCommodity.getPremium()!=null && !"".equals(platformCommodity.getPremium())){
                    newPlatformCommodity.setPremium(platformCommodity.getPremium());
                    float orgPrice = Float.valueOf(newPlatformCommodity.getGoodsPrice()) * (1f+Float.valueOf(platformCommodity.getPremium())/100f);
                    newPlatformCommodity.setMinPrice(String.format("%.2f", orgPrice));
                    i  = baseMapper.updatePremium(newPlatformCommodity);
                }
              else {
                    newPlatformCommodity.setIntegral(platformCommodity.getIntegral());
                    i = baseMapper.updatePremium(newPlatformCommodity);
                }
            }
        }
        return i;
    }
    /**
     * 小程序端限制条数查询
     */
    @Override
    public List<PlatformCommodity> selectListByLimitSize(PlatformCommodity platformCommodity) {
        return baseMapper.selectListByLimitSize(platformCommodity);
    }
}
