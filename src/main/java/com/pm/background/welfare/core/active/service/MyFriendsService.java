package com.pm.background.welfare.core.active.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.pm.background.welfare.core.active.entity.MyFriends;

import java.util.List;


public interface MyFriendsService extends IService<MyFriends> {
    int updateIfAgreeStatus(MyFriends myFriends);

    MyFriends byFriendIdGetEntity(MyFriends myFriends);

    List<MyFriends> myFriendsListAll(MyFriends myFriends);

    List<MyFriends> selectNoAddCommunity(MyFriends myFriends);
    MyFriends selectMyFriend(MyFriends myFriends);

}
