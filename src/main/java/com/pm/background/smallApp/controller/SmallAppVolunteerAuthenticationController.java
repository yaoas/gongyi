package com.pm.background.smallApp.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pm.background.admin.fastdfs.FastDFSClient;
import com.pm.background.admin.sys.entity.User;
import com.pm.background.admin.sys.service.IDictService;
import com.pm.background.admin.sys.service.IUserService;
import com.pm.background.common.base.controller.BaseController;
import com.pm.background.common.utils.R;
import com.pm.background.welfare.core.active.entity.RealNameAuthentication;
import com.pm.background.welfare.core.active.entity.ReceivingInfo;
import com.pm.background.welfare.core.active.entity.VolunteerAuthentication;
import com.pm.background.welfare.core.active.service.RealNameAuthenticationService;
import com.pm.background.welfare.core.active.service.VolunteerAuthenticationService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;


/**
 * 实名认证controller
 */
@RestController
@RequestMapping("/smallApp/volunteerAuthentication")
public class SmallAppVolunteerAuthenticationController extends BaseController {
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
        if(volunteerAuthentication.getSpareTime()==null||"".equals(volunteerAuthentication.getSpareTime())){
           return R.fail("服务时间段不能为空");
        }
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
    @RequestMapping("/ifAgreeVolunteerName")
    public Object ifAgreeVolunteerName(VolunteerAuthentication volunteerAuthentication){
        boolean ifboolean = true;
        if("1".equals(volunteerAuthentication.getIfAgree())){
            volunteerAuthentication.setIfAgreeName("通过");
            ifboolean = volunteerAuthenticationService.agreeVolunteerName(volunteerAuthentication);
            User user = userService.byAccountGetId(volunteerAuthentication.getOpenId());
            Long userId = user.getId();
            user.setId(userId);
            user.setRealNameCertification("1");
            userService.realNameCertification(user);
        }if("2".equals(volunteerAuthentication.getIfAgree())){
            ifboolean = volunteerAuthenticationService.removeById(volunteerAuthentication.getId());
        }
        if(ifboolean){
            return R.ok("操作成功");
        }else {
            return R.ok("操作失败");
        }

    }

}
