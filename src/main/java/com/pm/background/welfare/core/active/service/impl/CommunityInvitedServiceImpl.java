package com.pm.background.welfare.core.active.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pm.background.welfare.core.active.dao.CommunityInvitedMapper;
import com.pm.background.welfare.core.active.entity.CommunityChat;
import com.pm.background.welfare.core.active.entity.CommunityInvited;
import com.pm.background.welfare.core.active.service.CommunityInvitedService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommunityInvitedServiceImpl extends ServiceImpl<CommunityInvitedMapper, CommunityInvited> implements CommunityInvitedService {
    @Override
    public int insertInvitedPeople(CommunityInvited communityInvited) {
        return baseMapper.insertInvitedPeople(communityInvited);
    }

    @Override
    public boolean insertCommunityUser(CommunityInvited communityInvited) {
        int i = baseMapper.insertCommunityUser(communityInvited);
        if (i > 0) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public int upUserToCaptain(CommunityInvited communityInvited) {
        return baseMapper.upUserToCaptain(communityInvited);
    }

    @Override
    public int insertCommunityChat(CommunityChat communityChat) {
        return baseMapper.insertCommunityChat(communityChat);
    }

    @Override
    public List<CommunityChat> selectCommunityChat(CommunityChat communityChat) {
        return baseMapper.selectCommunityChat(communityChat);
    }

    @Override
    public int selectIfHaveUser(CommunityInvited communityInvited) {
        return baseMapper.selectIfHaveUser(communityInvited);
    }

    @Override
    public int selectIfApplyInsertInvited(CommunityInvited communityInvited) {
        return baseMapper.selectIfApplyInsertInvited(communityInvited);
    }
}
