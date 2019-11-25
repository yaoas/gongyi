package com.pm.background.welfare.core.active.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.pm.background.welfare.core.active.entity.*;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface ActiveInfoMapper extends BaseMapper<ActiveInfo> {
    boolean bindingCommodity(BindingCommodity bindingCommodity);

    Integer deleteBindingCommodity(BindingCommodity bindingCommodity);

    int updateStatus(ActiveInfo activeInfo);

    int updateBindingStatus(ActiveInfo activeInfo);

    int updateBinComStatus(Commodity commodity);

    int updateImageAddress(ActiveInfo activeInfo);

    int insertActiveChat(ActiveChat activeChat);

    List<ActiveChat> selectActiveChat(CommunityChat communityChat);

    Long selectBindingAllId(Long activeId);

    List<ActiveInfo> selectBingCommodityActive(ActiveInfo activeInfo);
    //点赞插入
    int insertActiveFabulous(ActiveInfo activeInfo);
    //更新点赞
    int updateActiveFabulos(ActiveInfo activeInfo);
    //删除点赞
    int  deleteActiveFabulous (ActiveInfo activeInfo);
    //查询是否有过点赞记录
    int selectActiveFabulous(ActiveInfo activeInfo);
}
