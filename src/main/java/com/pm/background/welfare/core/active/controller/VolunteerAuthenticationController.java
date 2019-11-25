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
import com.pm.background.welfare.core.active.entity.ReceivingInfo;
import com.pm.background.welfare.core.active.entity.VolunteerAuthentication;
import com.pm.background.welfare.core.active.service.VolunteerAuthenticationService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;


/**
 * 实名认证controller
 */
@RestController
@RequestMapping("/volunteerAuthentication")
public class VolunteerAuthenticationController extends BaseController {
    @Autowired
    private VolunteerAuthenticationService volunteerAuthenticationService;
    @Autowired
    private IDictService iDictService;
    @Autowired
    private IUserService userService;

    /**
     * 分页查询列表
     * 1志愿者2实名认证
     * param(currentPage,certificationType)
     */
    @GetMapping(value = "/page/list")
    public Object pageList(VolunteerAuthentication volunteerAuthentication) {
        QueryWrapper qw = new QueryWrapper<ReceivingInfo>();
        if (StringUtils.isNotEmpty(volunteerAuthentication.getIfAgree())) {
            qw.eq("ifAgree", volunteerAuthentication.getIfAgree());
        } if (StringUtils.isNotEmpty(volunteerAuthentication.getName())) {
            qw.like("name", volunteerAuthentication.getName());
        } if (StringUtils.isNotEmpty(volunteerAuthentication.getCertificate())) {
            qw.like("certificate", volunteerAuthentication.getCertificate());
        } if (StringUtils.isNotEmpty(volunteerAuthentication.getCellPhone())) {
            qw.like("cellPhone", volunteerAuthentication.getCellPhone());
        }
        IPage page = volunteerAuthenticationService.page(new Page(volunteerAuthentication.getCurrentPage(), volunteerAuthentication.getPageSize()), qw);
        return R.ok(page);
    }

    /**
     *
     * @param volunteerAuthentication
     * @return
     */
    @Transactional
    @RequestMapping("/publishVolunteerAuthentication")
    public Object publishVolunteerAuthentication(@RequestBody VolunteerAuthentication volunteerAuthentication) {
        String spareTimeName = iDictService.byIdGetName(Integer.valueOf(volunteerAuthentication.getSpareTime()));
        String chooseName = iDictService.byIdGetName(Integer.valueOf(volunteerAuthentication.getProgramChoose()));
        volunteerAuthentication.setSpareTimeName(spareTimeName);
        volunteerAuthentication.setProgramChooseName(chooseName);
        volunteerAuthentication.setIfAgree("0");
        volunteerAuthentication.setIfAgreeName("未审核");
        boolean publishFlag = volunteerAuthenticationService.saveOrUpdate(volunteerAuthentication);
        if (publishFlag) {
            return R.ok("申请成功！");
        } else {
            return R.fail("申请失败！");
        }
    }
    /**
     * 删除
     */
    @Transactional
    @RequestMapping("/delete")
    public Object delete(HttpServletRequest request,@RequestBody VolunteerAuthentication volunteerAuthentication) {
        boolean deleteFlag = volunteerAuthenticationService.removeById(volunteerAuthentication.getId());
        if (deleteFlag) {
            return R.ok("删除成功！");
        } else {
            return R.fail("删除失败！");
        }
    }
    /**
     * 志愿者认证审批
     */
    @Transactional
    @RequestMapping("/ifAgreeVolunteerName")
    public Object ifAgreeVolunteerName(@RequestBody VolunteerAuthentication volunteerAuthentication){
        boolean ifboolean = true;
        if("1".equals(volunteerAuthentication.getIfAgree())){
            volunteerAuthentication.setIfAgreeName("通过");
            ifboolean = volunteerAuthenticationService.agreeVolunteerName(volunteerAuthentication);
            User user = new User();
            Long userId = ShiroUtils.getUserEntity().getId();
            user.setId(userId);
            user.setVolunteerCertification("1");
            userService.volunteerCertification(user);
        }else{
            volunteerAuthentication.setIfAgree("2");
            ifboolean = volunteerAuthenticationService.removeById(volunteerAuthentication.getId());
        }
        if(ifboolean){
            return R.ok("操作成功");
        }else {
            return R.ok("操作失败");
        }

    }
    @RequestMapping("checkDetail")
    public  Object checkDetail(Long id){
        VolunteerAuthentication volunteerAuthentication =volunteerAuthenticationService.getById(id);
        return R.ok(volunteerAuthentication);
    }

}
