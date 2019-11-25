package com.pm.background.welfare.core.active.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.pm.background.welfare.core.active.entity.MyEcoupon;
import com.pm.background.welfare.core.active.entity.MyFriends;
import com.pm.background.welfare.core.active.entity.OrderInfo;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface MyFriendsMapper extends BaseMapper<MyFriends> {
    int updateIfAgreeStatus(MyFriends myFriends);

    MyFriends byFriendIdGetEntity(MyFriends myFriends);
    MyFriends selectMyFriend(MyFriends myFriends);

    List<MyFriends> myFriendsListAll(MyFriends myFriends);

    List<MyFriends> selectNoAddCommunity(MyFriends myFriends);

}
