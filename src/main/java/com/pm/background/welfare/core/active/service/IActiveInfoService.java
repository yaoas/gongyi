package com.pm.background.welfare.core.active.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.pm.background.welfare.core.active.entity.*;

import java.util.List;

public interface IActiveInfoService extends IService<ActiveInfo> {

    /**
     * 分页列表
     *
     * @param activeInfo
     * @return
     */
    IPage<ActiveInfo> selectPageList(ActiveInfo activeInfo);

    /**
     * 活动发布
     *
     * @param activeInfo
     * @return
     */
    boolean save(ActiveInfo activeInfo);

    /**
     * 删除活动商品关联表信息
     */
    boolean deleteBindingCommodity(BindingCommodity bindingCommodity);

    /**
     * 活动商品关联
     */
    boolean bindingCommodity(BindingCommodity bindingCommodity);

    //获取活动详情
    ActiveInfo getActiveInfo(Long id);

    //删除活动
    boolean deleteActiveInfo(Long id);

    //
    int updateStatus(ActiveInfo activeInfo);

    //更改活动被绑定状态（商品）
    int updateBindingStatus(ActiveInfo activeInfo);

    //更改商品绑定状态1被绑定2未被绑定
    int updateBinComStatus(Commodity commodity);

    //通过活动id查询被绑定的商品
    Long selectBindingAllId(Long activeId);

    int updateImageAddress(ActiveInfo activeInfo);

    //新增活动留言
    int insertActiveChat(ActiveChat activeChat);

    //查询活动留言
    List<ActiveChat> selectActiveChat(CommunityChat communityChat);
    //点赞
    int insertActiveFabulousSever(ActiveInfo activeInfo);
    //取消点赞
    int deleteActiveFabulousSever(ActiveInfo activeInfo);
    //查询是否有点赞记录
    int selectActiveFabulousServer(ActiveInfo activeInfo);


}
