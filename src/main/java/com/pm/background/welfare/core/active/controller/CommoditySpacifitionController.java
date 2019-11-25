package com.pm.background.welfare.core.active.controller;

import com.pm.background.common.base.controller.BaseController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


/**
 * 信息controller
 */
@RestController
@RequestMapping("/commoditySpecification")
public class CommoditySpacifitionController extends BaseController {
 /*   @Autowired
    private CommoditySpecificationService commoditySpecificationService;
    @Autowired
    private CommodityTypeService commodityTypeService;


    @GetMapping(value = "/page/list")
    public Object pageList(CommoditySpecifications commoditySpecifications) {
        QueryWrapper qw = new QueryWrapper<CommoditySpecifications>();
        qw.orderByDesc("update_time");
        qw.orderByDesc("create_time");
        IPage page = commoditySpecificationService.page(new Page(commoditySpecifications.getCurrentPage(), commoditySpecifications.getPageSize()), qw);
        return R.ok(page);
    }
    @GetMapping(value = "/list")
    public Object pageAllList(CommoditySpecifications commoditySpecifications) {
        QueryWrapper qw = new QueryWrapper<CommoditySpecifications>();
        if(commoditySpecifications.getCommodityTypeId()!=null && !"".equals(commoditySpecifications.getCommodityTypeId())){
            qw.eq("commodityTypeId",commoditySpecifications.getCommodityTypeId());
        }
        qw.orderByDesc("update_time");
        qw.orderByDesc("create_time");
        List<CommoditySpecifications> list = commoditySpecificationService.list(qw);
        return R.ok(list);
    }

    *//**
     * 添加信息
     *
     * @param commoditySpecifications
     * @return
     *//*
    @RequestMapping("/publishReceiving")
    public Object publishReceiving(@RequestBody CommoditySpecifications commoditySpecifications) {
        if(commoditySpecifications.getSpecificationsName()==null||"".equals(commoditySpecifications.getSpecificationsName())){
          return R.fail("规格不能为空");
        }
        if(commoditySpecifications.getCommodityTypeId()==null||"".equals(commoditySpecifications.getCommodityTypeId())){
            return R.fail("种类不能为空");
        }
        QueryWrapper qw = new QueryWrapper<CommoditySpecifications>();
        qw.eq("specificationsName",commoditySpecifications.getSpecificationsName());
        qw.eq("commodityTypeId",commoditySpecifications.getCommodityTypeId());
        List list = commoditySpecificationService.list(qw);
        boolean publishFlag = true ;
        if(list.size()>0){
            return R.fail("该种类规格已经存在！");
        }
        else {
            CommodityType commodityType = commodityTypeService.getById(commoditySpecifications.getCommodityTypeId());
            commoditySpecifications.setCommodityTypeName(commodityType.getCommodityTypename());
           publishFlag = commoditySpecificationService.saveOrUpdate(commoditySpecifications);
        }
        if (publishFlag) {
            return R.ok("成功！");
        } else {
            return R.fail("失败！");
        }

    }

    *//**
     * 修改
     *
     * @param commoditySpecifications
     * @return
     *//*

    @RequestMapping("/updateReceiving")
    public Object updateReceiving(@RequestBody CommoditySpecifications commoditySpecifications) {
        if(commoditySpecifications.getSpecificationsName()==null||"".equals(commoditySpecifications.getSpecificationsName())){
            return R.fail("规格不能为空");
        }
        if(commoditySpecifications.getCommodityTypeId()==null||"".equals(commoditySpecifications.getCommodityTypeId())){
            return R.fail("种类不能为空");
        }
        QueryWrapper qw = new QueryWrapper<CommoditySpecifications>();
        qw.eq("specificationsName",commoditySpecifications.getSpecificationsName());
        qw.eq("commodityTypeId",commoditySpecifications.getCommodityTypeId());
        List list = commoditySpecificationService.list(qw);
        if(list.size()>0){
            return R.fail("该种类规格已经存在！");
        }
        CommodityType commodityType = commodityTypeService.getById(commoditySpecifications.getCommodityTypeId());
        commoditySpecifications.setCommodityTypeName(commodityType.getCommodityTypename());
        boolean  updateReceivingFlag = commoditySpecificationService.updateById(commoditySpecifications);
        if (updateReceivingFlag) {
            return R.ok("修改成功！");
        } else {
            return R.fail("修改失败！");
        }
    }

    *//**
     * 删除
     *//*
    @RequestMapping("/delete")
    public Object delete(Long id) {
        boolean deleteFlag = commoditySpecificationService.removeById(id);
        if (deleteFlag) {
            return R.ok("删除成功！");
        } else {
            return R.fail("删除失败！");
        }
    }*/

}
