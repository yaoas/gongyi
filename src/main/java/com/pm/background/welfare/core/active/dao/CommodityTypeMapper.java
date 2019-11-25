package com.pm.background.welfare.core.active.dao;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pm.background.welfare.core.active.entity.CommodityType;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 商品种类管理
 * 
 * @author yas
 * @email 457030599@qq.com
 */
@Repository
@Mapper
public interface CommodityTypeMapper extends BaseMapper<CommodityType> {

    IPage<CommodityType> selectPageList(Page page, @Param("commodityType") CommodityType commodityType);

    List<CommodityType> queryListParentId(Long parentId);



}
