package com.pm.background.welfare.core.active.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pm.background.welfare.core.active.dao.CommunityMapper;
import com.pm.background.welfare.core.active.entity.Community;
import com.pm.background.welfare.core.active.entity.CommunityInvited;
import com.pm.background.welfare.core.active.service.CommunityService;
import org.springframework.stereotype.Service;

@Service
public class CommunityServiceImpl extends ServiceImpl<CommunityMapper, Community> implements CommunityService {
    @Override
    public int updatePeopleNumber(Community community) {
        return baseMapper.updatePeopleNumber(community);
    }

    @Override
    public int selectPeopleNumber(Long id) {
        return baseMapper.selectPeopleNumber(id);
    }

    @Override
    public int deleteCommunityUser(CommunityInvited communityInvited) {
        return baseMapper.deleteCommunityUser(communityInvited);
    }

    @Override
    public int updateCommunityContent(Community community) {
        return baseMapper.updateCommunityContent(community);
    }

    @Override
    public int deleteCommunityUserCreate(CommunityInvited communityInvited) {
        return baseMapper.deleteCommunityUserCreate(communityInvited);
    }
}
