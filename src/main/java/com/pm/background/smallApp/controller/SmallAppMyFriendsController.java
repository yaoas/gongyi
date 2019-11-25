package com.pm.background.smallApp.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.pm.background.admin.sys.entity.User;
import com.pm.background.admin.sys.service.IUserService;
import com.pm.background.common.base.controller.BaseController;
import com.pm.background.common.utils.R;
import com.pm.background.welfare.core.active.entity.MyFriends;
import com.pm.background.welfare.core.active.service.MyFriendsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


/**
 * 朋友信息controller
 */
@RestController
@RequestMapping("/smallApp/myFriends")
public class SmallAppMyFriendsController extends BaseController {

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
    public Object pageListAll(HttpServletRequest request,MyFriends myFriends) {
        if(myFriends.getOpenId()==null||"".equals(myFriends.getOpenId())){
            R.ok();
        }
        User user = userService.byAccountGetId(myFriends.getOpenId());
        Long userId = user.getId();
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
    public Object pageListApply(HttpServletRequest request,String openId) {
        if(openId==null||"".equals(openId)){
            R.ok();
        }
        User user = userService.byAccountGetId(openId);
        Long userId = user.getId();
        QueryWrapper qw = new QueryWrapper<MyFriends>();
        qw.eq("myId", userId);
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
    public Object addMyFriends(HttpServletRequest request,Long id,String openId) {
        if(openId==null||"".equals(openId)){
            R.fail("请先登录");
        }
        User user = userService.byAccountGetId(openId);
        Long userId = user.getId();
        MyFriends myss = new MyFriends();
        myss.setMyId(id);
        myss.setMyFriendId(userId);
        myss = myFriendsService.byFriendIdGetEntity(myss);
        boolean publishFlag = true;
        if (myss == null) {
            User users = userService.getById(id);
            MyFriends myFriend2 = new  MyFriends();
            myFriend2.setMyFriendId(userId);
            myFriend2.setMyFriendName(user.getName());
            myFriend2.setMyFriendPicture(user.getAvatar());
            myFriend2.setMyId(users.getId());
            myFriend2.setIfAgree("2");
            publishFlag = myFriendsService.saveOrUpdate(myFriend2);
            if (publishFlag) {
                return R.ok("申请成功！");
            } else {
                return R.fail("申请失败！");
            }
        }else {
                return R.ok("申请成功！");
        }
    }

    /**
     * 同意好友申请
     */
    @Transactional
    @RequestMapping("/agreeApplyFriend")
    public Object agreeApplyFriend(Long id) {
        MyFriends myFriend = myFriendsService.getById(id);
        myFriendsService.updateIfAgreeStatus(myFriend);
       //插入另一个好友
        MyFriends myFriends = new MyFriends();
        User user = userService.getById(myFriend.getMyId());
        myFriends.setMyFriendId(myFriend.getMyId());
        myFriends.setMyFriendName(user.getName());
        myFriends.setMyFriendPicture(user.getAvatar());
        myFriends.setMyId(myFriend.getMyFriendId());
        myFriends.setIfAgree("1");
        boolean i = myFriendsService.saveOrUpdate(myFriends);
        if (i ) {
            return R.ok("同意成功！");
        } else {
            return R.fail("同意失败！");
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
     * 查询好友
     */

    @RequestMapping("/queryMyFriend")
    public Object queryMyFriend(String name,String openId) {
        if(openId==null||"".equals(openId)){
            return R.ok();
        }else {
            List<User> userList = userService.byNameGetUser(name);
            List<User> list = new ArrayList<>();
            if(userList.size() > 0){
                for(User user:userList){
                    if(!openId.equals(user.getOpenId())){
                        list.add(user);
                    }
                }
            }
            return R.ok(list);
        }
    }


}
