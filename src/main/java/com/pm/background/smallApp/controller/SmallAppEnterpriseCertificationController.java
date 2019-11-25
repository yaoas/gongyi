package com.pm.background.smallApp.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pm.background.admin.sys.entity.User;
import com.pm.background.admin.sys.service.IUserService;
import com.pm.background.common.base.controller.BaseController;
import com.pm.background.common.utils.R;
import com.pm.background.welfare.core.active.entity.EnterpriseCertification;
import com.pm.background.welfare.core.active.entity.ReceivingInfo;
import com.pm.background.welfare.core.active.service.EnterpriseCertificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;


/**
 * 企业认证controller
 */
@RestController
@RequestMapping("/smallApp/enterpriseCertification")
public class SmallAppEnterpriseCertificationController extends BaseController {
    @Autowired
    private IUserService userService;
    @Autowired
    private EnterpriseCertificationService enterpriseCertificationService;

    /**
     * 分页查询列表
     */
    @GetMapping(value = "/page/list")
    public Object pageList(EnterpriseCertification enterpriseCertification) {
            QueryWrapper qw = new QueryWrapper<ReceivingInfo>();
            qw.orderByDesc("update_time");
            qw.orderByDesc("create_time");
            IPage page = enterpriseCertificationService.page(new Page(enterpriseCertification.getCurrentPage(), enterpriseCertification.getPageSize()), qw);
            return R.ok(page);
    }


    /**
     * 添加认证信息
     *
     * @param enterpriseCertification
     * @return
     */
    @Transactional
    @RequestMapping("/publishEnterpriseCertification")
    public Object publishEnterpriseCertification(HttpServletRequest request,@RequestBody EnterpriseCertification enterpriseCertification) {
        boolean publishFlag = enterpriseCertificationService.saveOrUpdate(enterpriseCertification);
        User user = userService.byAccountGetId(enterpriseCertification.getOpenId());
        user.setEnterpriseCertification("1");
        userService.enterpriseCertification(user);
        if (publishFlag) {
            return R.ok("认证成功！");
        } else {
            return R.fail("认证失败！");
        }

    }

    /**
     * 删除
     */
    @Transactional
    @RequestMapping("/delete")
    public Object delete(String id,String openId) {
        if(openId==null||"".equals(openId)){
            R.fail("请先登录");
        }
        long longId = Long.valueOf(id);
        boolean deleteFlag = enterpriseCertificationService.removeById(longId);
        User user = userService.byAccountGetId(openId);
        user.setEnterpriseCertification("2");
        userService.enterpriseCertification(user);
        if (deleteFlag) {
            return R.ok("删除成功！");
        } else {
            return R.fail("删除失败！");
        }
    }

}
