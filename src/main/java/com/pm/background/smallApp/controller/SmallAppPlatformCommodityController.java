package com.pm.background.smallApp.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.pm.background.common.base.controller.BaseController;
import com.pm.background.common.utils.R;
import com.pm.background.welfare.core.active.entity.CommoditySpecification;
import com.pm.background.welfare.core.active.entity.PlatformCommodity;
import com.pm.background.welfare.core.active.service.CommoditySpecificationService;
import com.pm.background.welfare.core.active.service.PlatformCommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

/**
 * 自营商品app端接口
 */
@RestController
@RequestMapping("/smallApp/platformCommodity")
public class SmallAppPlatformCommodityController extends BaseController {

    @Autowired
    private PlatformCommodityService platformCommodityService;
    @Autowired
    private CommoditySpecificationService commoditySpecificationService;

    /**
     * 小程序端限制条数商品列表查询
     */
    @GetMapping(value = "/limitPageList")
    public Object limitPageList(PlatformCommodity platformCommodity) {
        List<PlatformCommodity> list = platformCommodityService.selectListByLimitSize(platformCommodity);
        List<PlatformCommodity> listLimit = new ArrayList<>();
        for(PlatformCommodity platformCommodity1 : list){
            QueryWrapper qw = new QueryWrapper<CommoditySpecification>();
            qw.eq("platformCommodityId",platformCommodity1.getId());
            qw.last("limit 1");
            List<CommoditySpecification> listCommodity = commoditySpecificationService.list(qw);
            for(CommoditySpecification commoditySpecification : listCommodity){
                platformCommodity1.setOriginalPrice(commoditySpecification.getMinPrice());
                platformCommodity1.setIntegral(commoditySpecification.getIntegral());
            }
            listLimit.add(platformCommodity1);
        }
        return R.ok(listLimit);
    }
    /**
     * 全部商品列表查询
     */
    @GetMapping(value = "/pageList")
    public Object pgeList(PlatformCommodity platformCommodity) {
        QueryWrapper qw = new QueryWrapper<PlatformCommodity>();
        if(platformCommodity.getTitle()!=null && !"".equals(platformCommodity.getTitle())){
            qw.like("title",platformCommodity.getTitle());
        }
        qw.orderByDesc("create_time");
        qw.eq("status","1");
        List<PlatformCommodity> list = platformCommodityService.list(qw);
        List<PlatformCommodity> listAll = new ArrayList<>();
        for(PlatformCommodity platformCommodity1 : list){
            QueryWrapper qws = new QueryWrapper<CommoditySpecification>();
            qws.eq("platformCommodityId",platformCommodity1.getId());
            qws.last("limit 1");
            List<CommoditySpecification> listCommodity = commoditySpecificationService.list(qws);
            for(CommoditySpecification commoditySpecification : listCommodity){
                platformCommodity1.setOriginalPrice(commoditySpecification.getMinPrice());
                platformCommodity1.setIntegral(commoditySpecification.getIntegral());
            }
            listAll.add(platformCommodity1);
        }
        return R.ok(listAll);
    }
    /**
     * 查看商品
     * param id
     */
    @RequestMapping("/viewPlatformCommodity")
    public Object viewPlatformCommodity(String id) {
        PlatformCommodity platformCommodity =  platformCommodityService.getById(Long.valueOf(id));
        platformCommodity.setType("47");
       // float orgPrice = Float.valueOf(platformCommodity.getOriginalPrice()) * (1f+Float.valueOf(platformCommodity.getPremium())/100f);
       // platformCommodity.setOriginalPrice(String.format("%.2f", orgPrice));

        QueryWrapper qw = new QueryWrapper<CommoditySpecification>();
        qw.eq("platformCommodityId",id);
        List listSpe = commoditySpecificationService.list(qw);
        platformCommodity.setMap(listSpe);
        return R.ok(platformCommodity);
    }

    /**
     * 根据规格查询价格和积分
     */
    /**
     * 查看规格
     */
    @RequestMapping("/querySpacifition")
    public Object querySpacifition(String id){
        CommoditySpecification commoditySpecification = commoditySpecificationService.getById(Long.valueOf(id));
        return R.ok(commoditySpecification);
    }


}
