package com.pm.background.welfare.core.active.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pm.background.admin.common.shiro.ShiroUtils;
import com.pm.background.admin.sys.entity.User;
import com.pm.background.admin.sys.service.IDictService;
import com.pm.background.admin.sys.service.IUserService;
import com.pm.background.common.base.controller.BaseController;
import com.pm.background.common.utils.R;
import com.pm.background.welfare.core.active.entity.*;
import com.pm.background.welfare.core.active.service.*;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

/**
 * 积分比例controller
 */
@RestController
@RequestMapping("/deductionRatio")
public class RatioController extends BaseController {

    @Autowired
    private RatioService ratioService;
    @Autowired
    private CommodityService commodityService;

    @GetMapping(value = "/page/list")
    public Object pageList(DudecationRatio dudecationRatio) {
        QueryWrapper qw = new QueryWrapper<ActiveInfo>();
        if(dudecationRatio.getRatio()!=null&&!"".equals(dudecationRatio.getRatio())){
            qw.eq("ratio",dudecationRatio.getRatio());
        }
        qw.orderByDesc("update_time");
        qw.orderByDesc("create_time");
        IPage page = ratioService.page(new Page(dudecationRatio.getCurrentPage(), dudecationRatio.getPageSize()), qw);
        return R.ok(page);
    }
    @GetMapping(value = "/list")
    public Object pageListAll(DudecationRatio dudecationRatio) {
        QueryWrapper qw = new QueryWrapper<ActiveInfo>();
        qw.orderByDesc("update_time");
        qw.orderByDesc("create_time");
        List<DudecationRatio> list = ratioService.list(qw);
        return R.ok(list);
    }

    /**
     * 查看
     */
    @GetMapping(value = "/checkRatio")
    public  Object checkRatio(String id){
        DudecationRatio dudecationRatio = ratioService.getById(id);
        return R.ok(dudecationRatio);

    }
    /**
     *新增
     * @param dudecationRatio
     * @return
     */
    @Transactional
    @RequestMapping("/publish")
    public Object publish(@RequestBody DudecationRatio dudecationRatio) {
        QueryWrapper qw = new QueryWrapper<DudecationRatio>();
        if(dudecationRatio.getRatio()==null||"".equals(dudecationRatio.getRatio())){
            return  R.fail("积分比例为空");
        }
        qw.eq("ratio",dudecationRatio.getRatio());
        List<DudecationRatio> list = ratioService.list(qw);
        if(list.size() > 0){
            return R.fail("该比例已经存在");
        }
        Long userId = ShiroUtils.getUserEntity().getId();
        dudecationRatio.setCreateBy(userId);
        boolean publishFlag = ratioService.saveOrUpdate(dudecationRatio);
        if (publishFlag) {
            return R.ok("新增成功！");
        } else {
            return R.fail("新增失败！");
        }
    }

    /**
     * 修改
     *
     * @param dudecationRatio
     * @return
     */
    @Transactional
    @RequestMapping("/updateActiveInfo")
    public Object updateActiveInfo(HttpServletRequest request, @RequestBody DudecationRatio dudecationRatio) {
        if("".equals(dudecationRatio.getRatio())){
            return  R.fail("比例不能为空");
        }
        QueryWrapper qw = new QueryWrapper<DudecationRatio>();
        qw.eq("ratio",dudecationRatio.getRatio());
        List<DudecationRatio> list = ratioService.list(qw);
        if(list.size() > 0){
            return R.fail("该比例已经存在");
        }
        boolean updateActiveInfoFlag = ratioService.updateById(dudecationRatio);
        if (updateActiveInfoFlag) {
            return R.ok("修改成功！");
        } else {
            return R.fail("修改失败！");
        }
    }


    /**
     * 删除
     */
    @Transactional
    @RequestMapping("/delete")
    public Object delete(String id) {
        boolean deleteFlag = true;
        Long ids = Long.valueOf(id);
        QueryWrapper qw = new QueryWrapper<Commodity>();
        qw.eq("cationRatioId",ids);
        List<Commodity> list = commodityService.list(qw);
        if(list.size() > 0){
            return R.fail("有商品应用该比例,不能删除");
        }else {
            deleteFlag =  ratioService.removeById(ids);
        }
        if (deleteFlag) {
            return R.ok("删除成功！");
        } else {
            return R.fail("删除失败！");
        }
    }




}
