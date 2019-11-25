package com.pm.background.welfare.core.active.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.pm.background.admin.sys.entity.Dept;
import com.pm.background.welfare.core.active.entity.CommodityType;

import java.util.List;

/**
 * 部门管理
 *
 * @author hs
 * @email 457030599@qq.com
 * @date 2018-10-10 21:13:03
 */
public interface CommodityTypeService extends IService<CommodityType> {


    /**
     * 获取树形列表
     */
    List<CommodityType> treeDeptList(Long commodityTypeId, CommodityType commodityType);

    List<CommodityType> queryListParentId(Long parentId);




}
