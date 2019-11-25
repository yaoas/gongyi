package com.pm.background.welfare.core.active.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.pm.background.welfare.core.active.entity.IntegralCommodity;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.pm.background.welfare.core.active.entity.Commodity;

import java.util.List;

/**
 * 商品管理
 *
 * @author yas
 */
@Repository
@Mapper
public interface CommodityMapper extends BaseMapper<Commodity> {
    int saveCommodity(Commodity commodity);

    int upCommodity(Commodity commodity);

    int downCommodity(Commodity commodity);

    int insertIntegralCommodity(IntegralCommodity integralCommodity);

    List<IntegralCommodity> selectIntegralCommodity(IntegralCommodity integralCommodity);

    int updateIntegralCommodity(IntegralCommodity integralCommodity);

    int deleteIntegralCommodity(Long id);

    double byIdFindPrice(Long id);

    String deleteByCommodityIdGetActiveId(Long id);
    int updateCommudityNumber(Commodity commodity);
}
