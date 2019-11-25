package com.pm.background.smallApp.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pm.background.admin.sys.entity.User;
import com.pm.background.admin.sys.service.IUserService;
import com.pm.background.common.base.controller.BaseController;
import com.pm.background.common.utils.R;
import com.pm.background.welfare.core.active.entity.Community;
import com.pm.background.welfare.core.active.entity.CommunityChat;
import com.pm.background.welfare.core.active.entity.CommunityInvited;
import com.pm.background.welfare.core.active.entity.MyFriends;
import com.pm.background.welfare.core.active.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.*;


/**
 * 社区信息controller
 */
@RestController
@RequestMapping("/smallApp/communityInvited")
public class SmallAppCommunityInvitedController extends BaseController {
    @Autowired
    private CommunityInvitedService communityInvitedService;
    @Autowired
    private IUserService userService;
    @Autowired
    private CommunityService communityService;
    @Autowired
    private MyFriendsService myFriendsService;

    @GetMapping(value = "/page/list")
    public Object pageList(HttpServletRequest request, CommunityInvited communityInvited) {
        if(communityInvited.getOpenId()==null||"".equals(communityInvited.getOpenId())){
            QueryWrapper qw = new QueryWrapper<Community>();
            qw.orderByDesc("update_time");
            qw.orderByDesc("create_time");
            IPage page = communityInvitedService.page(new Page(communityInvited.getCurrentPage(), communityInvited.getPageSize()), qw);
            return R.ok(page);
        }else {
            User user = userService.byAccountGetId(communityInvited.getOpenId());
            Long userId = user.getId();
            QueryWrapper qw = new QueryWrapper<Community>();
            qw.eq("createUserId", userId);
            qw.orderByDesc("update_time");
            qw.orderByDesc("create_time");
            IPage page = communityInvitedService.page(new Page(communityInvited.getCurrentPage(), communityInvited.getPageSize()), qw);
            return R.ok(page);
        }

    }

    /**
     * 社区申请列表
     * @param request
     * @param openId
     * @return
     */

    @GetMapping(value = "/list")
    public Object pageListAll(HttpServletRequest request,String openId) {
        if(openId ==null||"".equals(openId)){
            return R.ok();
        }else {
            User user = userService.byAccountGetId(openId);
            Long userId = user.getId();
            QueryWrapper qw = new QueryWrapper<Community>();
            qw.eq("createUserId", userId);
            qw.orderByDesc("update_time");
            qw.orderByDesc("create_time");
            List<CommunityInvited> list = communityInvitedService.list(qw);
            return R.ok(list);
        }
    }

    /**
     * 用户主动申请加入社区
     */
    @Transactional
    @RequestMapping("/applyIntoCommunity")
    public Object applyIntoCommunity(HttpServletRequest request,@RequestBody CommunityInvited communityInvited) {
        if(communityInvited.getOpenId()==null||"".equals(communityInvited.getOpenId())){
            R.fail("请先登录");
        }
        User user = userService.byAccountGetId(communityInvited.getOpenId());
        Long userId = user.getId();
        String realName =user.getRealNameCertification();
        if(!"1".equals(realName)){
            return R.fail("未实名认证！！！");
        }
        communityInvited.setUserId(userId);
        int ifApply = communityInvitedService.selectIfApplyInsertInvited(communityInvited);
        if (ifApply == 0) {
            Community community = communityService.getById(communityInvited.getCommunityId());
            communityInvited.setCommunityName(community.getCommunityName());
            communityInvited.setCreateUserName(community.getCreateName());
            communityInvited.setCreateUserId(community.getCreateBy());
            communityInvited.setUserName(user.getName());
            communityInvited.setImageAddress(community.getImagePicture());
            int count = communityInvitedService.insertInvitedPeople(communityInvited);
            if (count > 0) {
                return R.ok("申请成功！");
            } else {
                return R.fail("申请失败！");
            }
        } else {
            Map map = new HashMap<String, String>();
            map.put("msg", "已经申请");
            map.put("code", "1");
            return map;
        }
    }

    /**
     * 查询添加社区邀请人
     * 页码，社区communityId
     */
    @RequestMapping("/queryAddUser")
    public Object queryAddUser(HttpServletRequest request,Long communityId,String openId) {
        if(openId ==null||"".equals(openId)){
            R.fail("请先登录");
        }
        User user = userService.byAccountGetId(openId);
        Long userId = user.getId();
        MyFriends myFriends = new MyFriends();
        myFriends.setIfAgree("1");
        myFriends.setMyId(userId);
        myFriends.setMyFriendId(communityId);
        List<MyFriends> list = myFriendsService.selectNoAddCommunity(myFriends);
        return R.ok(list);
    }


    /**
     * 发起邀请，添加被邀请信息
     *
     * @param communityInvited(communityId,communityName,arrayUserId)
     * @return
     */
    @Transactional
    @RequestMapping("/publishCommunityInvited")
    public Object publishCommunityInvited(@RequestBody CommunityInvited communityInvited) {
        if(communityInvited.getOpenId()==null||"".equals(communityInvited.getOpenId())){
            R.fail("请先登录");
        }
        boolean ifTrue = true;
        for (int i = 0; i < communityInvited.getArrayUserId().length; i++) {
            communityInvited.setUserId(communityInvited.getArrayUserId()[i]);
            ifTrue = communityInvitedService.insertCommunityUser(communityInvited);
        }
        int peopleNumber = communityService.selectPeopleNumber(communityInvited.getCommunityId());
        Community community = new Community();
        community.setPeopleNumber(peopleNumber);
        communityService.updatePeopleNumber(community);
        //人数超过3个将人员提升为队长的功能
        int count = communityInvitedService.selectIfHaveUser(communityInvited);
        if (count == 0) {
            communityInvitedService.upUserToCaptain(communityInvited);
        }
        if (ifTrue) {
            return R.ok("邀请成功！");
        } else {
            return R.fail("邀请失败！");
        }

    }

    /**
     * 同意用户申请
     *
     * @param communityInvited(id,communityId,)
     */
    @Transactional
    @RequestMapping(value = "/agreeInvited")
    public synchronized Object agreeInvited(@RequestBody CommunityInvited communityInvited) {
        if(communityInvited.getOpenId()==null||"".equals(communityInvited.getOpenId())){
            R.fail("请先登录");
        }
        //添加到社区和用户的中间表
        boolean boolag = communityInvitedService.insertCommunityUser(communityInvited);
        int peopelNumber = communityService.selectPeopleNumber(communityInvited.getCommunityId());
        // Community community=communityService.getById(communityInvited.getCommunityId());
        Community community = new Community();
        community.setPeopleNumber(peopelNumber);
        community.setId(communityInvited.getCommunityId());
        communityService.updatePeopleNumber(community);
        communityInvitedService.removeById(communityInvited.getId());

        //人数超过3个将人员提升为队长的功能
        int count = communityInvitedService.selectIfHaveUser(communityInvited);
        if (count == 0) {
            if (peopelNumber >= 3) {
                communityInvitedService.upUserToCaptain(communityInvited);
            }
        }
        if (boolag) {
            return R.ok("操作成功！");
        } else {
            return R.fail("操作失败！");
        }
    }

    /**
     * 不同意邀请
     *
     * @param id
     */
    @RequestMapping(value = "/disagreeInvited")
    public synchronized Object disagreeInvited(Long id) {
        boolean count = communityInvitedService.removeById(id);
        if (count) {
            return R.ok("操作成功！");
        } else {
            return R.fail("操作失败！");
        }
    }

    /**
     * 退出社区
     *
     * @return 社区communityId，
     * 等功能全后 放开注释
     */
    @Transactional
    @RequestMapping(value = "/quitCommunity")
    public synchronized Object quitCommunity(HttpServletRequest request,@RequestBody CommunityInvited communityInvited) {
        if(communityInvited.getOpenId()==null||"".equals(communityInvited.getOpenId())){
            R.fail("请先登录");
        }
        Community communityUser = communityService.getById(communityInvited.getCommunityId());
        //删除 社区人员中间表
        User user = userService.byAccountGetId(communityInvited.getOpenId());
        Long userId = user.getId();
        int i =1;
       if(userId.equals(communityUser.getCreateBy())){
            communityService.deleteCommunityUserCreate(communityInvited);
            communityService.removeById(communityInvited.getCommunityId());
        }else{
        communityInvited.setUserId(userId);
        communityService.deleteCommunityUser(communityInvited);
        //社区人数减一
        int peopelNumber = communityService.selectPeopleNumber(communityInvited.getCommunityId());
        Community community = new Community();
        community.setPeopleNumber(peopelNumber);
        community.setId(communityInvited.getCommunityId());
         i = communityService.updatePeopleNumber(community);
        }
        if (i > 0) {
            return R.ok("退出成功！");
        } else {
            return R.fail("退出失败！");
        }

    }

    /**
     * param (content,communityId)
     *
     * @return
     */
    @Transactional
    @RequestMapping(value = "/insertCommunityChat")
    public synchronized Object insertCommunityChat(HttpServletRequest request,@RequestBody CommunityChat communityChat) {
        if(communityChat.getOpenId()==null||"".equals(communityChat.getOpenId())){
            R.fail("请先登录");
        }
        User user = userService.byAccountGetId(communityChat.getOpenId());
        communityChat.setUserId(user.getId());
        communityChat.setUserName(user.getName());
        communityChat.setCreateTime(new Date());
        int i = communityInvitedService.insertCommunityChat(communityChat);
        if (i > 0) {
            return R.ok("留言成功！");
        } else {
            return R.fail("留言失败！");
        }
    }

    /**
     * 查看社区聊天记录
     * 社区communityId,页码
     */
    @RequestMapping(value = "/selectCommunityChat")
    public Object selectCommunityChat(@RequestBody CommunityChat communityChat) {
        List<CommunityChat> list = communityInvitedService.selectCommunityChat(communityChat);
        return R.ok(list);

    }

}
