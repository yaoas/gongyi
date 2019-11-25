package com.pm.background.smallApp.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pm.background.common.base.controller.BaseController;
import com.pm.background.common.utils.R;
import com.pm.background.welfare.core.active.controller.HttpClientUtil;
import com.pm.background.welfare.core.active.entity.ButtShop;
import com.pm.background.welfare.core.active.service.ButtShopService;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * 商品controller
 */
@RestController
@RequestMapping("/smallApp/buttShop")
public class SmallAppButtShopController extends BaseController {

    @Autowired
    private ButtShopService buttShopService;

        /**
          * 商品pc端列表查询
        */
        @GetMapping(value = "/page/list")
        public Object pageList(HttpServletRequest request, ButtShop buttShop) {
            QueryWrapper qw = new QueryWrapper<ButtShop>();

            if (StringUtils.isNotEmpty(buttShop.getTitle())) {
                qw.like("title", buttShop.getTitle());
            }
            if (String.valueOf(buttShop.getId())!=null&&!"".equals(String.valueOf(buttShop.getId()))&&!"null".equals(String.valueOf(buttShop.getId()))) {
                qw.like("id", buttShop.getId());
            }
            qw.orderByDesc("create_time");
            IPage page = buttShopService.page(new Page(buttShop.getCurrentPage(), buttShop.getPageSize()), qw);
            return R.ok(page);
        }
      /**
       * 小程序端限制条数商品列表查询
       */
      @GetMapping(value = "/limitPageList")
      public Object limitPageList(HttpServletRequest request, ButtShop buttShop) {
          List<ButtShop> list = buttShopService.selectListByLimitSize(buttShop);
          List<ButtShop> listLimit = new ArrayList<>();
          for(ButtShop buttShop1 : list){
              float orgPrice = Float.valueOf(buttShop1.getOriginalPrice()) * (1f+Float.valueOf(buttShop1.getPremium())/100f);
              buttShop1.setOriginalPrice(String.format("%.2f", orgPrice));
              listLimit.add(buttShop1);
          }
          return R.ok(listLimit);
      }
    /**
     * 小程序端商品全部查询接口
     */
    @GetMapping(value = "/allList")
    public Object allList(HttpServletRequest request, ButtShop buttShop) {
        QueryWrapper qw = new QueryWrapper<ButtShop>();
        if (StringUtils.isNotEmpty(buttShop.getTitle())) {
            qw.like("title", buttShop.getTitle());
        }
        qw.orderByDesc("create_time");
        List<ButtShop> list = buttShopService.list(qw);
        List<ButtShop> listAll = new ArrayList<>();
        for(ButtShop buttShop1 : list){
            float orgPrice = Float.valueOf(buttShop1.getOriginalPrice()) * (1f+Float.valueOf(buttShop1.getPremium())/100f);
            buttShop1.setOriginalPrice(String.format("%.2f", orgPrice));
            listAll.add(buttShop1);
        }
        return R.ok(listAll);
    }

    /**
     * 同步商品信息
     */
    @RequestMapping("/synchronizationButtShop")
    public Object synchronizationButtShop(){
        String tempdata= HttpClientUtil.HttpGet("http://api.kemengjizhang.com/v3.0/komoi/mygoods/list");
        JSONObject getjson = new JSONObject(tempdata);
        JSONObject result = (JSONObject)getjson.get("result");
        JSONArray getarray = (JSONArray)result.get("list");
        List<ButtShop> list =  com.alibaba.fastjson.JSONObject.parseArray(getarray.toString(), ButtShop.class);
       boolean  falge = buttShopService.synchronizationButtShop(list);
        if(falge){
            return R.ok();
        }else {
            return R.fail();
        }

    }

    /**
     * 查看商品详情
     */
    @RequestMapping("/queryDetailButtShop")
    public Object queryDetailButtShop(String  id){

        ButtShop buttShop = buttShopService.getById(Long.valueOf(id));
        float orgPrice = Float.valueOf(buttShop.getOriginalPrice()) * (1f+Float.valueOf(buttShop.getPremium())/100f);
        buttShop.setOriginalPrice(String.format("%.2f", orgPrice));
        buttShop.setType("47");
        return R.ok(buttShop);
    }
    /**
     * 调整溢价比例
     */
    @RequestMapping("/updatePremium")
    public Object updatePremium(@RequestBody ButtShop buttShop){
        int i = buttShopService.updatePremium(buttShop);
        if(i > 0 ){
            return R.ok();
        }else {
            return R.fail();
        }
    }

    /**
     * 刪除商品接口
     */
    @RequestMapping("/deleteButtShop")
    public  Object deleteButtShop(String id){
        boolean flage  = buttShopService.removeById(Long.valueOf(id));
        if(flage){
            return R.ok();
        }else {
            return R.fail();
        }
    }
    /**
     * 更新商品接口
     */
    @RequestMapping("/updateButtShop")
    public  Object updateButtShop(@RequestBody ButtShop buttShop){
        float orgPrice = Float.valueOf(buttShop.getOriginalPrice()) * (1f+Float.valueOf(buttShop.getPremium())/100f);
        buttShop.setOriginalPrice(String.format("%.2f", orgPrice));
        boolean flage  = buttShopService.updateById(buttShop);
        if(flage){
            return R.ok();
        }else {
            return R.fail();
        }
    }
    /**
     * 新增商品接口
     */
    @RequestMapping("/insertButtShop")
    public  Object insertButtShop(@RequestBody ButtShop buttShop){
        if(!"1".equals(buttShop.getStatus())){
            buttShop.setStatus("2");
        }
        ButtShop buttShop1 = buttShopService.getById(buttShop.getId());
        if(buttShop1 != null){
            return R.fail("该id已经存在");
        }else {
            boolean flage  = buttShopService.save(buttShop);
            if(flage){
                return R.ok();
            }else {
                return R.fail();
            }
        }

    }

}
