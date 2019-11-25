package com.pm.background.smallApp.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.pm.background.welfare.core.active.entity.ActiveInfo;
import com.pm.background.welfare.core.active.entity.BindingCommodity;
import com.pm.background.welfare.core.active.entity.Commodity;
import com.pm.background.welfare.core.active.service.IActiveInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * 定时controller
 */
//@Component
public class SmallAppScheduleController {
    @Autowired
    private IActiveInfoService activeInfoService;

    /**
     * 检查活动是否到期，需要下架
     */
    @Scheduled(cron = "0 30 0 * * ?")
    public void checkActive() {
        Calendar nowTime = Calendar.getInstance();
        nowTime.setTime(new Date());
        int intNowTime = nowTime.get(Calendar.DAY_OF_YEAR);
        Calendar beforeTime = Calendar.getInstance();
        //获取活动日期
        QueryWrapper qw = new QueryWrapper<ActiveInfo>();
        List<ActiveInfo> activeInfoList = activeInfoService.list(qw);
        if (activeInfoList.size() > 0) {
            for (ActiveInfo active : activeInfoList) {
                if (active.getEndTime() != null) {
                    beforeTime.setTime(active.getEndTime());
                } else {
                    beforeTime.setTime(active.getUpdateTime());
                }
                int intBeforeTime = beforeTime.get(Calendar.DAY_OF_YEAR);
                if ((intNowTime - intBeforeTime) > 10) {
                    activeInfoService.removeById(active.getId());
                    BindingCommodity bindingCommodity = new BindingCommodity();
                    bindingCommodity.setActiveId(active.getId());
                    Long commodityId = activeInfoService.selectBindingAllId(bindingCommodity.getActiveId());
                    activeInfoService.deleteBindingCommodity(bindingCommodity);
                    Commodity commodity = new Commodity();
                    commodity.setBindingStatus("2");
                    commodity.setId(commodityId);
                    activeInfoService.updateBinComStatus(commodity);
                }
            }
        }


    }

}
