package com.pm.background.welfare.core.active.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pm.background.admin.common.shiro.ShiroUtils;
import com.pm.background.admin.sys.entity.User;
import com.pm.background.admin.sys.service.IUserService;
import com.pm.background.common.base.controller.BaseController;
import com.pm.background.common.utils.R;
import com.pm.background.welfare.core.active.entity.CommoditySpecification;
import com.pm.background.welfare.core.active.entity.PlatformCommodity;
import com.pm.background.welfare.core.active.service.CommoditySpecificationService;
import com.pm.background.welfare.core.active.service.PlatformCommodityService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 自营商品controller
 */
@RestController
@RequestMapping("/platformCommodity")
public class PlatformCommodityController extends BaseController {

    @Autowired
    private PlatformCommodityService platformCommodityService;
    @Autowired
    private CommoditySpecificationService commoditySpecificationService;
    @Autowired
    private IUserService userService;

    /**
     * 自营商品列表和分页查询
     * 需要页码，页容量
     *
     */
    @GetMapping(value = "/page/list")
    public Object pageList(PlatformCommodity platformCommodity) {
        List<Long> roleList = ShiroUtils.getUserEntity().getRoleList();
        String roleId = "";
        String adminRole = "";
        //根据角色判定是否全部显示
        for(Long roleIds : roleList){
            if("3".equals(String.valueOf(roleIds))){
                roleId = String.valueOf(roleIds);
            }if("1".equals(String.valueOf(roleIds))){
                adminRole = String.valueOf(roleIds);
            }
        }
        QueryWrapper qw = new QueryWrapper<PlatformCommodity>();
        if (StringUtils.isNotEmpty(platformCommodity.getTitle())) {
            qw.like("title", platformCommodity.getTitle());
        }
        if (StringUtils.isNotEmpty(platformCommodity.getStatus())) {
            qw.eq("status", platformCommodity.getStatus());
        }
        if(!"3".equals(String.valueOf(roleId)) && !"1".equals(String.valueOf(adminRole))){
            qw.eq("create_by",ShiroUtils.getUserEntity().getId());
        }
        qw.orderByDesc("create_time");
        IPage page = platformCommodityService.page(new Page(platformCommodity.getCurrentPage(), platformCommodity.getPageSize()), qw);
        List<PlatformCommodity> records = page.getRecords();
        List<PlatformCommodity> listAll = new ArrayList<>();
       if(records.size() > 0){
           for(PlatformCommodity plat : records){
               QueryWrapper qws = new QueryWrapper<CommoditySpecification>();
               qws.eq("platformCommodityId",plat.getId());
               List list = commoditySpecificationService.list(qws);
               plat.setMap(list);
               listAll.add(plat);
           }
       }
        page.setRecords(listAll);
        return R.ok(page);
    }
    /**
     * 商品新增
     *
     * @return
     */
    @RequestMapping("/publish")
    public Object publish(@RequestBody PlatformCommodity platformCommodity) {

        Long userId = ShiroUtils.getUserEntity().getId();
        User byId = userService.getById(userId);
        platformCommodity.setCreateBy(userId);
        platformCommodity.setStatus("0");
        platformCommodity.setIntegral("0");
        platformCommodity.setPremium("0");
        platformCommodity.setStatusName("未上架");
        platformCommodity.setOriginalPrice(platformCommodity.getGoodsPrice());
        platformCommodity.setMinPrice(platformCommodity.getGoodsPrice());
        platformCommodity.setCreateByName(byId.getAccount());
       // platformCommodity.setOriginalPrice(String.valueOf(Float.valueOf(platformCommodity.getGoodsPrice())/100f));
        boolean publishFlag = platformCommodityService.saveOrUpdate(platformCommodity);

        //增加规格
        for(CommoditySpecification commoditySpecification:platformCommodity.getMap()){
            commoditySpecification.setPlatformCommodityId(String.valueOf(platformCommodity.getId()));
            commoditySpecification.setIntegral("0");
            commoditySpecification.setPremium("0");
            commoditySpecification.setMinPrice(commoditySpecification.getUnitPrice());
            commoditySpecificationService.saveOrUpdate(commoditySpecification);
        }

        if (publishFlag) {
            return R.ok("新增成功！");
        } else {
            return R.fail("新增失败！");
        }
    }
    /**
     * 修改商品
     *只能修改未上架的和下架的商品
     * @param platformCommodity
     * @return
     */
    @RequestMapping("/updatePlatformCommodity")
    public Object updatePlatformCommodity(@RequestBody PlatformCommodity platformCommodity) {
        platformCommodity.setCreateTime(new Date());
        //单价
        Float unitPrice = Float.valueOf(platformCommodity.getGoodsPrice());
        //购买价
        Float purchasePrice = unitPrice + unitPrice* Float.valueOf(platformCommodity.getPremium())/100f;

        platformCommodity.setOriginalPrice(String.format("%.2f", unitPrice));
        platformCommodity.setMinPrice(String.format("%.2f",purchasePrice));
        boolean updatePlatformCommodity = platformCommodityService.updateById(platformCommodity);
        if (updatePlatformCommodity) {
            return R.ok("修改成功！");
        } else {
            return R.fail("修改失败！");
        }
    }

    /**
     * 删除商品
     * @param id
     */
    @RequestMapping("/delete")
    public Object delete(String id) {
        boolean ifDelete = platformCommodityService.removeById(Long.valueOf(id));
        if(ifDelete){
            return R.ok("删除成功！");
        } else {
            return R.fail("删除失败！");
        }
    }


    /**
     * 查看商品
     * param id
     */
    @RequestMapping("/viewPlatformCommodity")
    public Object viewPlatformCommodity(String id) {
        PlatformCommodity platformCommodity =  platformCommodityService.getById(Long.valueOf(id));
        return R.ok(platformCommodity);
    }

    /**
     * 商品上下架
     * status 1上架2下架
     */
    @RequestMapping("/upOrDownPlatformCommodity")
    public Object upOrDownPlatformCommodity(@RequestBody PlatformCommodity platformCommodity) {
        if("1".equals(platformCommodity.getStatus())){
            platformCommodity.setStatusName("已上架");
        }else {
            platformCommodity.setStatusName("已下架");
        }
        boolean updatePlatformCommodity = platformCommodityService.updateById(platformCommodity);
        if (updatePlatformCommodity) {
            return R.ok("操作成功！");
        } else {
            return R.fail("操作失败！");
        }
    }

 /*   *//**
     * 批量调整溢价或者积分
     * 溢价时百分比
     * 积分是整数
     *//*
    @RequestMapping("/updatePremium")
    public Object updatePremium(@RequestBody PlatformCommodity platformCommodity){
        int i = platformCommodityService.updatePremium(platformCommodity);
        if(i > 0 ){
            return R.ok();
        }else {
            return R.fail();
        }
    }*/
    /**
     * 批量更改商品溢价或者积分
     */
    @RequestMapping("/updatePremium")
    public Object updatePremium(@RequestBody CommoditySpecification commoditySpecification){
        int i = 1;
        if(commoditySpecification.getIntegral()!=null && !"".equals(commoditySpecification.getIntegral())){
            i = commoditySpecificationService.updateCommodityPriceOrIntegral(commoditySpecification);
        }if(commoditySpecification.getPremium()!=null &&!"".equals(commoditySpecification.getPremium()) ){
            QueryWrapper qw = new QueryWrapper<CommoditySpecification>();
            List<CommoditySpecification> list = commoditySpecificationService.list(qw);
            for(CommoditySpecification commoditySpecifications : list){
                float orgPrice = Float.valueOf(commoditySpecifications.getUnitPrice()) * (1f+Float.valueOf(commoditySpecification.getPremium())/100f);
                commoditySpecification.setMinPrice(String.format("%.2f", orgPrice));
                commoditySpecification.setId(commoditySpecifications.getId());
                i =commoditySpecificationService.updateCommodityPriceOrIntegral(commoditySpecification);
            }
        }
        if(i > 0 ){
            return R.ok();
        }else {
            return R.fail();
        }
    }

    /**
     * 单个更改溢价或者积分
     */
    @RequestMapping("/oneUpdateCommodityPriceOrIntegral")
    public Object oneUpdateCommodityPriceOrIntegral(@RequestBody PlatformCommodity platformCommodity){
        int i = commoditySpecificationService.deleteByCommodutyId(String.valueOf(platformCommodity.getId()));
        if(i > 0){
            //增加规格
            for(CommoditySpecification commoditySpecification:platformCommodity.getMap()){
                commoditySpecification.setPlatformCommodityId(String.valueOf(platformCommodity.getId()));
                if(commoditySpecification.getIntegral() ==null || "".equals(commoditySpecification.getIntegral())){
                    commoditySpecification.setIntegral("0");
                }
                if(commoditySpecification.getPremium()==null || "".equals(commoditySpecification.getPremium())){
                    commoditySpecification.setMinPrice(commoditySpecification.getUnitPrice());
                    commoditySpecification.setPremium("0");
                }
                if(commoditySpecification.getPremium()!=null &&!"".equals(commoditySpecification.getPremium()) ){
                    float orgPrice = Float.valueOf(commoditySpecification.getUnitPrice()) * (1f+Float.valueOf(commoditySpecification.getPremium())/100f);
                    commoditySpecification.setMinPrice(String.format("%.2f", orgPrice));
                }
                commoditySpecification.setPlatformCommodityId(String.valueOf(platformCommodity.getId()));
                commoditySpecificationService.saveOrUpdate(commoditySpecification);
            }
            return R.ok();
        }
        else {
            return R.fail("更改失败");
        }
    }

    /**
     * 查看规格
     */
    @RequestMapping("/querySpacifition")
    public Object querySpacifition(String id){
        QueryWrapper qw = new QueryWrapper<CommoditySpecification>();
        qw.eq("platformCommodityId",id);
        List list = commoditySpecificationService.list(qw);
        return R.ok(list);
    }



}
