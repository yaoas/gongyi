package com.pm.background.welfare.core.active.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.pm.background.welfare.core.active.entity.CommunityChat;
import com.pm.background.welfare.core.active.entity.CommunityInvited;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface CommunityInvitedMapper extends BaseMapper<CommunityInvited> {
    int insertInvitedPeople(CommunityInvited communityInvited);

    int insertCommunityUser(CommunityInvited communityInvited);

    int upUserToCaptain(CommunityInvited communityInvited);

    int insertCommunityChat(CommunityChat communityChat);

    List<CommunityChat> selectCommunityChat(CommunityChat communityChat);

    int selectIfHaveUser(CommunityInvited communityInvited);

    int selectIfApplyInsertInvited(CommunityInvited communityInvited);


}
