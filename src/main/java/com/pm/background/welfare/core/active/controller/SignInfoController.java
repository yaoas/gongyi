package com.pm.background.welfare.core.active.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pm.background.admin.common.shiro.ShiroUtils;
import com.pm.background.admin.sys.entity.User;
import com.pm.background.admin.sys.service.IUserService;
import com.pm.background.common.base.controller.BaseController;
import com.pm.background.common.utils.R;
import com.pm.background.welfare.core.active.entity.ActiveInfo;
import com.pm.background.welfare.core.active.entity.SignInfo;
import com.pm.background.welfare.core.active.entity.UserIntegral;
import com.pm.background.welfare.core.active.service.IActiveInfoService;
import com.pm.background.welfare.core.active.service.SignInfoService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.*;

/**
 * 签到controller
 */
@RestController
@RequestMapping("/signInfo")
public class SignInfoController extends BaseController {
    @Autowired
    private SignInfoService signInfoService;
    @Autowired
    private IActiveInfoService activeInfoService;
    @Autowired
    private IUserService userService;

    /**
     * ApprovalStatus 0未审批，1审批通过，2审批不通过
     * 立即报名
     * 活动id
     */
    @Transactional
    @RequestMapping("/signUpActiveInfo")
    public Object signUpActiveInfo(@RequestBody SignInfo signInfo) {
        Long userId = ShiroUtils.getUserEntity().getId();
        signInfo.setUserId(userId);
        User user = userService.getById(signInfo.getUserId());
        String realName =user.getRealNameCertification();
        if(!"1".equals(realName)){
            return R.fail("未实名认证！！！");
        }
        ActiveInfo activeInfo = activeInfoService.getActiveInfo(signInfo.getActiveId());
        User userCreate = userService.getById(activeInfo.getCreateBy());
        signInfo.setActiveName(activeInfo.getTitle());
        signInfo.setUserName(user.getName());
        signInfo.setAvatar(user.getAvatar());
        signInfo.setActiveCreateUserId(activeInfo.getCreateBy());
        signInfo.setActiveCreateUserName(userCreate.getName());
        //未审批通过
        signInfo.setApprovalStatus("0");
        signInfo.setApprovalStatusName("未审批");
        //0表示未开始打卡
        signInfo.setClockStatus("0");
        signInfo.setSignUpStatus("1");
        signInfoService.signUpActiveInfo(signInfo);
        return R.ok(signInfo);


    }

    /**
     * 审批报名
     * 需要把审批id,approvalStatus  1审批通过，2审批不通过
     */
    @Transactional
    @RequestMapping("/approvalActiveInfo")
    public Object approvalActiveInfo(@RequestBody SignInfo signInfo) {
        if ("1".equals(signInfo.getApprovalStatus())) {
            signInfo.setApprovalStatusName("通过");
            signInfo.setSignUpStatus("2");
        }
        if ("2".equals(signInfo.getApprovalStatus())) {
            signInfo.setApprovalStatusName("不通过");
            signInfo.setSignUpStatus("0");
        }
        boolean publishFlag = signInfoService.updateStatus(signInfo);
        if (publishFlag) {
            return R.ok("审批成功！");
        } else {
            return R.fail("审批失败！");
        }

    }

    /**
     * 查看未审批分页查询列表
     * 传审批状态approvalStatus 0,页码
     */
    @GetMapping(value = "/page/approvalList")
    public Object approvalList(SignInfo signInfo) {
        Long userId = ShiroUtils.getUserEntity().getId();
        QueryWrapper qw = new QueryWrapper<SignInfo>();
        qw.eq("activeCreateUserId", userId);
        qw.eq("approvalStatus", signInfo.getApprovalStatus());
        qw.orderByDesc("update_time");
        qw.orderByDesc("create_time");
        IPage page = signInfoService.page(new Page(signInfo.getCurrentPage(), signInfo.getPageSize()), qw);
        return R.ok(page);
    }

    /**
     * 参与人分页查询列表
     * 传审批状态 页码,clockStatus 2已经结束打卡的
     * 活动id
     */
    @Transactional
    @GetMapping(value = "/page/list")
    public Object pageList(SignInfo signInfo) {
        Long userId = ShiroUtils.getUserEntity().getId();
        User user = userService.getById(userId);
        ActiveInfo active = activeInfoService.getById(signInfo.getActiveId());
        QueryWrapper qw = new QueryWrapper<SignInfo>();
        if (StringUtils.isNotEmpty(signInfo.getActiveName())) {
            qw.eq("activeName", signInfo.getActiveName());
        }if (StringUtils.isNotEmpty(signInfo.getUserName())) {
            qw.eq("userName", signInfo.getUserName());
        }
        qw.eq("user_id", userId);
        // qw.eq("approvalStatus",signInfo.getApprovalStatus());
        qw.eq("clockStatus", signInfo.getClockStatus());
        qw.orderByDesc("update_time");
        qw.orderByDesc("create_time");
        IPage page = signInfoService.page(new Page(signInfo.getCurrentPage(), signInfo.getPageSize()), qw);
        List list = new ArrayList();
        list.add(user);
        list.add(active);
        list.add(page);
        return R.ok(list);
    }

    @Transactional
    @GetMapping(value = "/page/listAll")
    public Object pageListAll(SignInfo signInfo) {

        QueryWrapper qw = new QueryWrapper<SignInfo>();
        if (StringUtils.isNotEmpty(signInfo.getActiveName())) {
            qw.eq("activeName", signInfo.getActiveName());
        }if (StringUtils.isNotEmpty(signInfo.getUserName())) {
            qw.eq("userName", signInfo.getUserName());
        }
        qw.eq("clockStatus", signInfo.getClockStatus());
        qw.orderByDesc("update_time");
        qw.orderByDesc("create_time");
        IPage page = signInfoService.page(new Page(signInfo.getCurrentPage(), signInfo.getPageSize()), qw);

        return R.ok(page);
    }

    /**
     * 开始打卡
     *
     * @param signInfo（id,imagePicture）
     * @return
     */
    @RequestMapping("/startSignInfo")
    public Object startSignInfo(@RequestBody SignInfo signInfo) {
        signInfo.setStartTime(new Date());
        //2代表结束打卡状态
        signInfo.setClockStatus("1");
        int count = signInfoService.startSignInfo(signInfo);
        if (count > 0) {
            return R.ok("开始打卡成功！");
        } else {
            return R.fail("开始打卡失败！");
        }

    }


    /**
     * 结束打开记录
     * id
     */
    @Transactional
    @RequestMapping("/endSignInfo")
    public Object endSignInfo(@RequestBody SignInfo signInfos) {
        ActiveInfo activeInfo = activeInfoService.getActiveInfo(signInfos.getActiveId());
        SignInfo signInfo = signInfoService.getById(signInfos.getId());
        int startInt = activeInfo.getStartTime().compareTo(signInfo.getStartTime());
        int endInt = activeInfo.getEndTime().compareTo(new Date());
        Date startTimeHour =new Date();
        Date endTimeHour = new Date();
        Calendar startTime = Calendar.getInstance();
        if (startInt > 0) {
            startTimeHour=activeInfo.getStartTime();
           // startTime.setTime(activeInfo.getStartTime());
        }
        if (startInt < 0) {
            startTimeHour=signInfo.getStartTime();
           // startTime.setTime(signInfo.getStartTime());
        }
        Calendar endTime = Calendar.getInstance();
        Date nowTime = new Date();
        if (endInt > 0) {
            endTimeHour=nowTime;
            //endTime.setTime(nowTime);
        }
        if (endInt < 0) {
            endTimeHour=activeInfo.getEndTime();
            //endTime.setTime(activeInfo.getEndTime());
        }
        signInfo.setEndTime(nowTime);
     //   float startTimeHour = startTime.get(Calendar.HOUR);
       // float endTimeHour = endTime.get(Calendar.HOUR);
        float  chahour=(endTimeHour.getTime() - startTimeHour.getTime())/3600000f;
        //保留两位小数
        float hourTime = Math.round(chahour*100f)/100f;
        signInfo.setActiveHour(hourTime);
        //2表示结束打卡
        signInfo.setClockStatus("2");
        int count = signInfoService.endSignInfo(signInfo);
        UserIntegral userIntegral = new UserIntegral();
        Long userId = ShiroUtils.getUserEntity().getId();
        UserIntegral integral = signInfoService.selectIntegralUser(userId);
        userIntegral.setUserId(signInfo.getUserId());
        userIntegral.setUserIntegral(integral.getUserIntegral() + Float.valueOf(hourTime));
        //积分更改
            signInfoService.updateUserIntegral(userIntegral);
        if (count > 0) {
            return R.ok("结束打卡成功！");
        } else {
            return R.fail("结束打卡失败！");
        }

    }

    @RequestMapping("/signDelete")
    public Object signDelete(Long[] id) {
        boolean deleteFlag = signInfoService.removeByIds(Arrays.asList(id));
        if (deleteFlag) {
            return R.ok("删除成功！");
        } else {
            return R.fail("删除失败！");
        }
    }


}
