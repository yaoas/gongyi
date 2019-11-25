package com.pm.background.welfare.core.active.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.pm.background.welfare.core.active.entity.ButtShop;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface ButtShopMapper extends BaseMapper<ButtShop> {
    /**
     * 更改商品溢价或者积分
     * @param buttShop
     * @return
     */
    int updatePremium(ButtShop buttShop);
    /**
     * 小程序端限制条数查询
     */
    List<ButtShop> selectListByLimitSize(ButtShop buttShop);
    /**
     * 删除所有数据
     */
    int deleteAll();
}
