package com.pm.background.welfare.core.active.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pm.background.admin.common.shiro.ShiroUtils;
import com.pm.background.admin.sys.entity.User;
import com.pm.background.admin.sys.service.IUserService;
import com.pm.background.common.base.controller.BaseController;
import com.pm.background.common.utils.R;
import com.pm.background.welfare.core.active.entity.RealNameAuthentication;
import com.pm.background.welfare.core.active.entity.ReceivingInfo;
import com.pm.background.welfare.core.active.service.RealNameAuthenticationService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


/**
 * 实名认证controller
 */
@RestController
@RequestMapping("/realNameAuthentication")
public class RealNameAuthenticationController extends BaseController {
    @Autowired
    private RealNameAuthenticationService realNameAuthenticationService;
    @Autowired
    private IUserService userService;

    /**
     * 分页查询列表
     * 1志愿者2实名认证
     * param(currentPage,certificationType)
     */
    @GetMapping(value = "/page/list")
    public Object pageList(RealNameAuthentication realNameAuthentication) {
        QueryWrapper qw = new QueryWrapper<ReceivingInfo>();
        if (StringUtils.isNotEmpty(realNameAuthentication.getIfAgree())) {
            qw.eq("ifAgree", realNameAuthentication.getIfAgree());
        }
        if (StringUtils.isNotEmpty(realNameAuthentication.getUserName())) {
            qw.like("userName",realNameAuthentication.getUserName());
        }
        if (StringUtils.isNotEmpty(realNameAuthentication.getIdCard())) {
            qw.eq("idCard", realNameAuthentication.getIdCard());
        }
        if (StringUtils.isNotEmpty(realNameAuthentication.getTelephone())) {
            qw.eq("telephone", realNameAuthentication.getTelephone());
        }
        qw.orderByDesc("update_time");
        qw.orderByDesc("create_time");


        IPage page = realNameAuthenticationService.page(new Page(realNameAuthentication.getCurrentPage(), realNameAuthentication.getPageSize()), qw);
        return R.ok(page);
    }


    /**
     * 删除
     */
    @Transactional
    @RequestMapping("/delete")
    public Object delete(@RequestBody RealNameAuthentication realNameAuthentication) {
        boolean deleteFlag = realNameAuthenticationService.removeById(realNameAuthentication.getId());
        User user = new User();
        Long userId = ShiroUtils.getUserEntity().getId();
        user.setId(userId);
        if ("1".equals(realNameAuthentication.getCertificationType())) {
            user.setVolunteerCertification("2");
            userService.volunteerCertification(user);
        }
        if ("2".equals(realNameAuthentication.getCertificationType())) {
            user.setRealNameCertification("2");
            userService.realNameCertification(user);
        }
        if (deleteFlag) {
            return R.ok("删除成功！");
        } else {
            return R.fail("删除失败！");
        }
    }
    /**
     * 实名认证审批
     */
    @Transactional
    @RequestMapping("/ifAgreeRealName")
    public Object ifAgreeRealName(@RequestBody RealNameAuthentication realNameAuthentication){
        boolean ifboolean = true;
        if("1".equals(realNameAuthentication.getIfAgree())){
            realNameAuthentication.setIfAgreeName("通过");
            ifboolean = realNameAuthenticationService.agreeRealName(realNameAuthentication);
            RealNameAuthentication realNameAuthentication2 = realNameAuthenticationService.getById(realNameAuthentication.getId());
            User user = new User();
            user.setId(realNameAuthentication2.getCreateBy());
            user.setRealNameCertification("1");
             userService.realNameCertification(user);
        }else{
            realNameAuthentication.setIfAgree("2");
            ifboolean = realNameAuthenticationService.removeById(realNameAuthentication.getId());
        }
        if(ifboolean){
            return R.ok("操作成功");
        }else {
            return R.ok("操作失败");
        }

    }


}
