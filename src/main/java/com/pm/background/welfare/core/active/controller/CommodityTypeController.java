package com.pm.background.welfare.core.active.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pm.background.common.base.controller.BaseController;
import com.pm.background.common.utils.R;
import com.pm.background.common.utils.ToolUtil;
import com.pm.background.welfare.core.active.entity.CommodityType;
import com.pm.background.welfare.core.active.service.CommoditySpecificationService;
import com.pm.background.welfare.core.active.service.CommodityTypeService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;
import java.util.Objects;

/**
 * 商品种类管理
 *
 * @author hs
 * @email 457030599@qq.com
 * @date 2018-12-17 15:21:00
 */
@RequestMapping("/sys/commodityType")
@RestController
public class CommodityTypeController extends BaseController {
    @Autowired
    private CommodityTypeService commodityTypeService;
    @Autowired
    private CommoditySpecificationService commoditySpecificationService;

    //分页
    @ApiOperation("分页列表")
    @GetMapping(value = "/page/list")
    public R pageList(CommodityType commodityType){

        QueryWrapper<CommodityType> qw = new QueryWrapper<CommodityType>();
        qw.orderByDesc("update_time");
        qw.orderByDesc("create_time");
        IPage page = commodityTypeService.page(new Page(commodityType.getCurrentPage(),commodityType.getPageSize()),qw);
        return R.ok(page);
    }
    @ApiOperation("列表")
    @GetMapping(value = "/list")
    public R list(CommodityType commodityType){

        QueryWrapper qw = new QueryWrapper<CommodityType>();
        qw.orderByDesc("update_time");
        qw.orderByDesc("create_time");
        List<CommodityType> commodityTypeList = commodityTypeService.list(qw);
        return R.ok(commodityTypeList);
    }
    @ApiOperation("保存")
    @PostMapping(value = "/save")
    public R save(@RequestBody CommodityType commodityType){
     if(commodityType.getCommodityTypename()==null||"".equals(commodityType.getCommodityTypename())){
         return R.fail("种类名称不能为空");
     }
        if (commodityType.getParentId() == null) {
            commodityType.setParentId(0L);
        }
        //同一父级下不能有重名部门
        QueryWrapper<CommodityType> query = new QueryWrapper<>();
        query.eq("parent_id",commodityType.getParentId());
        query.eq("commodityTypename",commodityType.getCommodityTypename());
        List<CommodityType> list = commodityTypeService.list(query);
        if (list != null && list.size() > 0) {
            return R.fail("该类型下已存在同名，请检查！");
        }
        if (commodityType.getDelFlag() == null) {
            commodityType.setDelFlag(0);
        }
        commodityTypeService.saveOrUpdate(commodityType);
        return R.ok();
    }
    @ApiOperation("删除")
    @PostMapping(value = "/delete")
    public R delete(@RequestBody Long deptIds[]){

        if(ToolUtil.isEmpty(deptIds)||deptIds.length<=0){
            return R.fail("未提交要删除的记录");
        }
        commodityTypeService.removeByIds(Arrays.asList(deptIds));
        return R.ok();
    }
    /**
     * 树形
     */
    @ApiOperation(value = "树形商品种类")
    @GetMapping("/tree/commodityType")
    public R treeDept(CommodityType commodityType){
        return R.ok(commodityTypeService.treeDeptList(0L,commodityType));
    }


    @ApiOperation("详情")
    @GetMapping(value = "/info")
    public R info(@RequestParam Long id){

        CommodityType commodityType = commodityTypeService.getById(id);
        if(ToolUtil.isEmpty(commodityType)){
            return R.fail("找不到该种类");
        }

        if(commodityType.getParentId()!=0){
            CommodityType pcommodityType = commodityTypeService.getById(commodityType.getParentId());
            commodityType.setPname(pcommodityType.getCommodityTypename());
        }
        else {
            commodityType.setPname("顶级");

        }
        return R.ok(commodityType);
    }






}