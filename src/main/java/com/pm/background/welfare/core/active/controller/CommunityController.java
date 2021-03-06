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
import com.pm.background.welfare.core.active.entity.Community;
import com.pm.background.welfare.core.active.service.CommunityInvitedService;
import com.pm.background.welfare.core.active.service.CommunityService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


/**
 * 社区信息controller
 */
@RestController
@RequestMapping("/community")
public class CommunityController extends BaseController {
    @Autowired
    private CommunityService communityService;
    @Autowired
    private CommunityInvitedService communityInvitedService;
    @Autowired
    private IUserService userService;

    /**
     * 分页查询列表
     */
    @GetMapping(value = "/page/list")
    public Object pageList(Community community) {
        QueryWrapper qw = new QueryWrapper<Community>();
        if(community.getCommunityName()!=null && !"".equals(community.getCommunityName())){
            qw.like("communityName",community.getCommunityName());
        }
        if(community.getCreateName()!=null&&!"".equals(community.getCreateName())){
            qw.like("createName",community.getCreateName());
        }
        IPage page = communityService.page(new Page(community.getCurrentPage(), community.getPageSize()), qw);
        return R.ok(page);
    }

    /**
     * 小程序端分页接口
     */
    @ApiOperation("列表")
    @GetMapping(value = "/list")
    public R list(Community community) {
        Long userId = ShiroUtils.getUserEntity().getId();
        QueryWrapper qw = new QueryWrapper<ActiveInfo>();
        if ("1".equals(community.getIfOtherUser())) {
            String notInSql = "select communityId from community_user where userId = " + userId;
            qw.notInSql("id", notInSql);
        } else {
            String inSql = "select communityId from community_user where userId = " + userId;
            qw.inSql("id", inSql);
        }
        qw.orderByDesc("update_time");
        qw.orderByDesc("create_time");
        String limit = "limit " + community.getLimit();
        qw.last(limit);
        List<ActiveInfo> activeInfoList = communityService.list(qw);
        return R.ok(activeInfoList);
    }
/**
 * 校驗社區名稱是否重複
 */
@RequestMapping("/checkNameCommunity")
public  Object checkNameCommunity(String communityName ){
    //校驗社區名稱是否重複
    QueryWrapper qw = new QueryWrapper<Community>();
    qw.eq("communityName",communityName);
    List<Community> list = communityService.list(qw);
    if(list.size() > 0){
        return R.fail("社区名称已经存在，请更改！！！");
    }else {
        return R.ok();
    }
}

    /**
     * 批量删除社区
     */
    @RequestMapping("/delete")
    public Object delete(@RequestBody Long[] id) {
        boolean deleteFlag = communityService.removeByIds(Arrays.asList(id));
        if (deleteFlag) {
            return R.ok("删除成功！");
        } else {
            return R.fail("删除失败！");
        }
    }


    /**
     * 查看我的社区具体信息限制人数为16
     */
    @Transactional
    @RequestMapping(value = "/checkCommunity")
    public Object checkCommunity(@RequestBody Community communitys) {
        Community community = communityService.getById(communitys.getId());
        if ("1".equals(communitys.getIfOtherUser())) {
            community.setIfOtherUser("1");
        }
        QueryWrapper qw = new QueryWrapper<User>();
        String sql = "select userId from community_user where communityId = " + communitys.getId();
        qw.inSql("id", sql);
        qw.last("limit 16");
        List<User> userList = userService.list(qw);
        List list = new ArrayList();
        community.setIfOtherUser("1");
        list.add(community);
        list.add(userList);
        return R.ok(list);
    }

    /**
     * 查看我的社区具体信息更多人
     */
    @RequestMapping(value = "/checkCommunityAll")
    public Object checkCommunityAll(String id) {
        QueryWrapper qw = new QueryWrapper<User>();
        String sql = "select userId from community_user where communityId = " + id;
        qw.inSql("id", sql);
        List<User> userList = userService.list(qw);
        return R.ok(userList);
    }

    /**
     * 更改社区公告
     */
    @RequestMapping("/updateCommunityContent")
    public Object updateCommunityContent(@RequestBody Community community) {
        Long userId = ShiroUtils.getUserEntity().getId();
        Community communitys = communityService.getById(community.getId());
        if(userId != communitys.getCreateBy()){
            return R.fail("无权限更改！！！");
        }
        int i = communityService.updateCommunityContent(community);
        if (i > 0) {
            return R.ok("更新成功！");
        } else {
            return R.fail("更新失败！");
        }
    }
}
