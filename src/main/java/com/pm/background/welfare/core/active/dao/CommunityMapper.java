package com.pm.background.welfare.core.active.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.pm.background.welfare.core.active.entity.Community;
import com.pm.background.welfare.core.active.entity.CommunityInvited;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface CommunityMapper extends BaseMapper<Community> {
    int updatePeopleNumber(Community community);

    int updateCommunityContent(Community community);

    int selectPeopleNumber(Long id);

    int deleteCommunityUser(CommunityInvited communityInvited);

    int deleteCommunityUserCreate(CommunityInvited communityInvited);
}
