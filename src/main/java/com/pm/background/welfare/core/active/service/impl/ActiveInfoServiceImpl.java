package com.pm.background.welfare.core.active.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pm.background.welfare.core.active.dao.ActiveInfoMapper;
import com.pm.background.welfare.core.active.entity.*;
import com.pm.background.welfare.core.active.service.IActiveInfoService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ActiveInfoServiceImpl extends ServiceImpl<ActiveInfoMapper, ActiveInfo> implements IActiveInfoService {


    /**
     * 分页列表
     *
     * @param activeInfo
     * @return
     */
    @Override
    public IPage<ActiveInfo> selectPageList(ActiveInfo activeInfo) {
        return null;
    }


    /**
     * 活动展示、查看
     *
     * @param id
     * @return
     */
    @Override
    public ActiveInfo getActiveInfo(Long id) {
        ActiveInfo ac = this.getById(id);
        return ac;
    }

    @Override
    public boolean bindingCommodity(BindingCommodity bindingCommodity) {
        return baseMapper.bindingCommodity(bindingCommodity);
    }

    @Override
    public boolean deleteBindingCommodity(BindingCommodity bindingCommodity) {
        Integer count = baseMapper.deleteBindingCommodity(bindingCommodity);
        if (count > 0) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public boolean deleteActiveInfo(Long id) {
        Integer count = baseMapper.deleteById(id);
        if (count > 0) {
            return true;
        } else {
            return false;
        }

    }

    @Override
    public int updateBindingStatus(ActiveInfo activeInfo) {
        return baseMapper.updateBindingStatus(activeInfo);
    }

    @Override
    public int updateBinComStatus(Commodity commodity) {
        return baseMapper.updateBinComStatus(commodity);
    }

    @Override
    public Long selectBindingAllId(Long activeId) {

        return baseMapper.selectBindingAllId(activeId);
    }

    @Override
    public int updateStatus(ActiveInfo activeInfo) {
        return baseMapper.updateStatus(activeInfo);
    }

    @Override
    public int updateImageAddress(ActiveInfo activeInfo) {
        return baseMapper.updateImageAddress(activeInfo);
    }

    @Override
    public int insertActiveChat(ActiveChat activeChat) {
        return baseMapper.insertActiveChat(activeChat);
    }

    @Override
    public List<ActiveChat> selectActiveChat(CommunityChat communityChat) {
        return baseMapper.selectActiveChat(communityChat);
    }

    @Transactional
    @Override
    public int insertActiveFabulousSever(ActiveInfo activeInfo) {
        int i = 0;
         i =baseMapper.insertActiveFabulous(activeInfo);
        //活动点赞加一
        activeInfo.setActiveFabulous(activeInfo.getActiveFabulous()+1);
       i= baseMapper.updateActiveFabulos(activeInfo);
        return i;
    }

    @Override
    public int deleteActiveFabulousSever(ActiveInfo activeInfo) {
        int i = 0 ;
        i = baseMapper.deleteActiveFabulous(activeInfo);
        activeInfo.setActiveFabulous(activeInfo.getActiveFabulous()-1);
        i= baseMapper.updateActiveFabulos(activeInfo);
        return i;
    }

    @Override
    public int selectActiveFabulousServer(ActiveInfo activeInfo) {
        return baseMapper.selectActiveFabulous(activeInfo);
    }


}
