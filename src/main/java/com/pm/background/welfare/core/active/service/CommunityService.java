package com.pm.background.welfare.core.active.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.pm.background.welfare.core.active.entity.Community;
import com.pm.background.welfare.core.active.entity.CommunityInvited;
import com.pm.background.welfare.core.active.entity.OrderInfo;

public interface CommunityService extends IService<Community> {
    int updatePeopleNumber(Community community);

    int selectPeopleNumber(Long id);

    int deleteCommunityUser(CommunityInvited communityInvited);

    int deleteCommunityUserCreate(CommunityInvited communityInvited);

    int updateCommunityContent(Community community);

}
