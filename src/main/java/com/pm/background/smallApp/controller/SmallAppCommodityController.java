package com.pm.background.smallApp.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pm.background.admin.sys.service.IDictService;
import com.pm.background.admin.sys.service.IUserService;
import com.pm.background.common.base.controller.BaseController;
import com.pm.background.common.utils.R;
import com.pm.background.common.utils.WeixinUtil;
import com.pm.background.welfare.core.active.entity.ActiveInfo;
import com.pm.background.welfare.core.active.entity.Commodity;
import com.pm.background.welfare.core.active.entity.IntegralCommodity;
import com.pm.background.welfare.core.active.service.CommodityService;
import com.pm.background.welfare.core.active.service.IActiveInfoService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 商品controller
 */
@RestController
@RequestMapping("/smallApp/commodity")
public class SmallAppCommodityController extends BaseController {
    @Autowired
    private CommodityService commodityService;
    @Autowired
    private IActiveInfoService activeInfoService;
    @Autowired
    private IDictService iDictService;
    @Autowired
    private IUserService userService;

    /**
     * 分页查询列表
     */
    @GetMapping(value = "/page/list")
    public Object pageList(HttpServletRequest request,Commodity commodity) {
        QueryWrapper qw = new QueryWrapper<ActiveInfo>();

        if (StringUtils.isNotEmpty(commodity.getName())) {
            qw.like("name", commodity.getName());
        }
        if (commodity.getType() != null) {
            qw.eq("type", commodity.getType());
        }
        if (commodity.getStatus() != null) {
            qw.eq("status", commodity.getStatus());
        }

        if (commodity.getBindingStatus() != null) {
            qw.ne("bindingStatus", commodity.getBindingStatus());
        }
        qw.orderByDesc("update_time");
        qw.orderByDesc("create_time");
        IPage page = commodityService.page(new Page(commodity.getCurrentPage(), commodity.getPageSize()), qw);
        return R.ok(page);
    }
    /**
     * 商品上架
     */
    @RequestMapping("/upCommodity")
    public Object upCommodity(@RequestBody Commodity commodity) {
        int upStatus = commodityService.upCommodity(commodity);
        if (upStatus != 0) {
            return R.ok("上架成功！");
        } else {
            return R.fail("上架失败！");
        }

    }
    /**
     * 查看
     * param id
     */
    @RequestMapping("/view")
    public Object view(String id) {
        long longId = Long.valueOf(id);
        Commodity commodity = commodityService.getActiveInfo(longId);
        return R.ok(commodity);
    }

    /**
     * 返回路径 MultipartFile
     *
     * @param file
     * @return
     */
    @CrossOrigin
    @RequestMapping("/returnPath")
    public Object returnPath(MultipartFile file) {
        return R.ok(WeixinUtil.returnPatn(file));
    }

    /**
     * 删除fastdfs文件
     */
    @RequestMapping("/deleteFastPath")
    public Object deleteFastPath(String path) {
        int deleteFlag = 0;
        try {
            String pathFile[] = path.split("https://fdfs.baodingjl.com/");
            String strongPath[] = pathFile[1].split("/M00");
            String relPath = "M00" + strongPath[1];
            deleteFlag = WeixinUtil.deleteReturnPatn(relPath);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (deleteFlag == 0) {
            return R.ok("删除成功！");
        } else {
            return R.fail("删除失败！");
        }

    }

    /**
     * 积分商品分页
     *
     * @param integralCommodity
     * @return
     */
    @GetMapping(value = "/page/integralList")
    public Object integralPageList(IntegralCommodity integralCommodity) {
        integralCommodity.setStartSize((integralCommodity.getCurrentPage() - 1) * 10);
        integralCommodity.setEndSize(10);
        List<IntegralCommodity> list = commodityService.selectIntegralCommodity(integralCommodity);
        return R.ok(list);
    }

    /**
     * 添加积分商品
     * param (imageAddress,title,integral,popularType)
     */
    @RequestMapping("/insertIntegralCommodity")
    public Object insertIntegralCommodity(@RequestBody IntegralCommodity integralCommodity) {
        int i = commodityService.insertIntegralCommodity(integralCommodity);
        if (i > 0) {
            return R.ok("添加成功！");
        } else {
            return R.fail("添加失败！");
        }
    }

    /**
     * 删除积分商品
     *
     * @param id
     * @return
     */
    @RequestMapping("/deleteIntegralCommodity")
    public Object deleteIntegralCommodity(Long id) {
        int i = commodityService.deleteIntegralCommodity(id);
        if (i > 0) {
            return R.ok("删除成功！");
        } else {
            return R.fail("删除失败！");
        }
    }

    /**
     * 修改积分商品
     * param (imageAddress,title,integral,popularType,id)
     */
    @RequestMapping("/updateIntegralCommodity")
    public Object updateIntegralCommodity(@RequestBody IntegralCommodity integralCommodity) {
        int i = commodityService.updateIntegralCommodity(integralCommodity);
        if (i > 0) {
            return R.ok("修改成功！");
        } else {
            return R.fail("修改失败！");
        }
    }


}
