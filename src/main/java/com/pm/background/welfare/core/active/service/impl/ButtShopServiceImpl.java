package com.pm.background.welfare.core.active.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pm.background.welfare.core.active.dao.ButtShopMapper;
import com.pm.background.welfare.core.active.entity.ButtShop;
import com.pm.background.welfare.core.active.service.ButtShopService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ButtShopServiceImpl extends ServiceImpl<ButtShopMapper, ButtShop> implements ButtShopService {

    /**
     * 同步商品信息
     * @param list
     * @return
     */
    @Override
    public boolean synchronizationButtShop(List<ButtShop> list) {
        int falge=0;
        baseMapper.deleteAll();
        for(ButtShop buttShop : list){
            buttShop.setOriginalPrice(String.valueOf(Float.valueOf(buttShop.getOriginalPrice())/100f));
            ButtShop buttShopIfHava = baseMapper.selectById(buttShop.getId());
            //如果存在，更新商品
            if(buttShopIfHava!=null){
                falge = baseMapper.updateById(buttShop);
            }else {
                //默认积分和溢价比例为0
                buttShop.setIntegral("0");
                buttShop.setPremium("0");
                buttShop.setStatus("2");
                falge =  baseMapper.insert(buttShop);
            }
        }
        if(falge > 0){
          return true;
        }else {
            return false;
        }
    }

    /**
     * //更改商品溢价或者积分
     * @param buttShop
     * @return
     */

    @Override
    public int updatePremium(ButtShop buttShop) {
        return baseMapper.updatePremium(buttShop);
    }
    /**
     * 小程序端限制条数查询
     */
    @Override
    public List<ButtShop> selectListByLimitSize(ButtShop buttShop) {
        return baseMapper.selectListByLimitSize(buttShop);
    }

}
