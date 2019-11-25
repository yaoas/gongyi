package com.pm.background.welfare.core.active.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pm.background.admin.common.shiro.ShiroUtils;
import com.pm.background.admin.sys.entity.User;
import com.pm.background.admin.sys.service.IUserService;
import com.pm.background.common.base.controller.BaseController;
import com.pm.background.common.utils.GetAlphabeGrouping;
import com.pm.background.common.utils.R;
import com.pm.background.welfare.core.active.entity.Community;
import com.pm.background.welfare.core.active.entity.MyFriends;
import com.pm.background.welfare.core.active.entity.ReceivingInfo;
import com.pm.background.welfare.core.active.service.MyFriendsService;
import com.pm.background.welfare.core.active.service.ReceivingInfoService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


/**
 * 朋友信息controller
 */
@RestController
@RequestMapping("/myFriends")
public class MyFriendsController extends BaseController {

    @Autowired
    private IUserService userService;

    @Autowired
    private MyFriendsService myFriendsService;

    /**
     * 好友列表
     * 1好友2申请
     *
     * @param myFriends
     * @return
     */
    @GetMapping("/pageListAll")
    public Object pageListAll(MyFriends myFriends) {
        Long userId = ShiroUtils.getUserEntity().getId();
        myFriends.setMyId(userId);
        myFriends.setMyFriendId(userId);
        myFriends.setIfAgree("1");
        List<MyFriends> list = myFriendsService.myFriendsListAll(myFriends);
        return R.ok(list);
    }

    /**
     * 申请列表
     */
    @GetMapping("/page/listApply")
    public Object pageListApply() {
        Long userId = ShiroUtils.getUserEntity().getId();
        QueryWrapper qw = new QueryWrapper<MyFriends>();
        qw.eq("myFriendId", userId);
        qw.eq("ifAgree", "2");
        List<MyFriends> list = myFriendsService.list(qw);
        return R.ok(list);
    }

    /**
     * 申请添加好友
     * 把要添加的好友id给我
     */
    @Transactional
    @RequestMapping("/addMyFriends")
    public Object addMyFriends(Long id) {
        Long userId = ShiroUtils.getUserEntity().getId();
        MyFriends myFriends = new  MyFriends();
        myFriends.setMyId(userId);
        myFriends.setMyFriendId(id);
         myFriends = myFriendsService.byFriendIdGetEntity(myFriends);
        boolean publishFlag = true;
        if (myFriends == null) {
            User user = userService.getById(id);
            MyFriends myFriend = new  MyFriends();
            myFriend.setMyFriendId(user.getId());
            myFriend.setMyFriendName(user.getName());
            myFriend.setMyFriendPicture(user.getAvatar());
            myFriend.setMyId(userId);
            myFriend.setIfAgree("2");
            publishFlag = myFriendsService.saveOrUpdate(myFriend);
        }
        if (publishFlag) {
            return R.ok("申请成功！");
        } else {
            return R.fail("申请失败！");
        }
    }


    /**
     * 拒绝好友申请
     */
    @RequestMapping("/deleteApply")
    public Object deleteApply(Long id) {
        boolean flag = myFriendsService.removeById(id);
        if (flag) {
            return R.ok("拒绝成功！");
        } else {
            return R.fail("拒绝失败！");
        }
    }

    /**
     * 不同意
     */

    /**
     * 查询好友
     */

    @RequestMapping("/queryMyFriend")
    public Object queryMyFriend(String name) {
        List<User> user = userService.byNameGetUser(name);
        return R.ok(user);
    }


}
