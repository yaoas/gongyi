package com.pm.background.welfare.core.active.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pm.background.welfare.core.active.dao.MyFriendsMapper;
import com.pm.background.welfare.core.active.entity.MyFriends;
import com.pm.background.welfare.core.active.service.MyFriendsService;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class MyFriendsServiceImpl extends ServiceImpl<MyFriendsMapper, MyFriends> implements MyFriendsService {
    @Override
    public int updateIfAgreeStatus(MyFriends myFriends) {
        return baseMapper.updateIfAgreeStatus(myFriends);
    }

    @Override
    public MyFriends byFriendIdGetEntity(MyFriends myFriends) {
        return baseMapper.byFriendIdGetEntity(myFriends);
    }

    @Override
    public List<MyFriends> myFriendsListAll(MyFriends myFriends) {
        return baseMapper.myFriendsListAll(myFriends);
    }

    @Override
    public List<MyFriends> selectNoAddCommunity(MyFriends myFriends) {
        return baseMapper.selectNoAddCommunity(myFriends);
    }

    @Override
    public MyFriends selectMyFriend(MyFriends myFriends) {
        return baseMapper.selectMyFriend(myFriends);
    }
}
