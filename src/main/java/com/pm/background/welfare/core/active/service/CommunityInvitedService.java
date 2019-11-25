package com.pm.background.welfare.core.active.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.pm.background.welfare.core.active.entity.CommunityChat;
import com.pm.background.welfare.core.active.entity.CommunityInvited;

import java.util.List;

public interface CommunityInvitedService extends IService<CommunityInvited> {
    int insertInvitedPeople(CommunityInvited communityInvited);

    boolean insertCommunityUser(CommunityInvited communityInvited);

    int upUserToCaptain(CommunityInvited communityInvited);

    //添加聊天记录
    int insertCommunityChat(CommunityChat communityChat);

    //查找聊天记录
    List<CommunityChat> selectCommunityChat(CommunityChat communityChat);

    int selectIfHaveUser(CommunityInvited communityInvited);

    int selectIfApplyInsertInvited(CommunityInvited communityInvited);

}
