package com.pm.background.welfare.core.active.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pm.background.admin.sys.dao.DeptMapper;
import com.pm.background.admin.sys.entity.Dept;
import com.pm.background.admin.sys.service.IDeptService;
import com.pm.background.common.utils.ToolUtil;
import com.pm.background.welfare.core.active.dao.CommodityTypeMapper;
import com.pm.background.welfare.core.active.entity.CommodityType;
import com.pm.background.welfare.core.active.service.CommodityTypeService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


@Service
public class CommodityTypeServiceImpl extends ServiceImpl<CommodityTypeMapper, CommodityType> implements CommodityTypeService {


    @Override
    public List<CommodityType> treeDeptList(Long commodityTypeId, CommodityType commodityType) {
        List<CommodityType> commodityTypesList ;
        if(ToolUtil.isNotEmpty(commodityType.getCommodityTypename())){
            commodityTypesList = this.list(new QueryWrapper<CommodityType>().lambda().like(CommodityType::getCommodityTypename,commodityType.getCommodityTypename()));
        }
        else {
            commodityTypesList =  queryListParentId(commodityTypeId);
        }

        return getAllDeptTreeList(commodityTypesList);
    }

    @Override
    public List<CommodityType> queryListParentId(Long parentId) {
        return baseMapper.queryListParentId(parentId);
    }




    /**
     * 商品种类树形表格
     */
    private List<CommodityType> getAllDeptTreeList(List<CommodityType> deptList){
        List<CommodityType> subDeptList = new ArrayList<CommodityType>();

        for(CommodityType entity : deptList){
            entity.setChildren(getAllDeptTreeList(queryListParentId(entity.getId())));
            subDeptList.add(entity);
        }

        return subDeptList;
    }





}
