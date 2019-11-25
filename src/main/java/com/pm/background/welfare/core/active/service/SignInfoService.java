package com.pm.background.welfare.core.active.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.pm.background.welfare.core.active.entity.Commodity;
import com.pm.background.welfare.core.active.entity.SignInfo;
import com.pm.background.welfare.core.active.entity.UserIntegral;

public interface SignInfoService extends IService<SignInfo> {

    int startToSignTime(SignInfo signInfo);

    //报名活动
    int signUpActiveInfo(SignInfo signInfo);

    //活动审批
    boolean updateStatus(SignInfo signInfo);

    //开始打卡
    int startSignInfo(SignInfo signInfo);

    //结束打卡
    int endSignInfo(SignInfo signInfo);

    //增添积分
    int insertIntegral(UserIntegral userIntegral);

    //查询用户积分
    UserIntegral selectIntegralUser(Long id);

    //更新用户积分
    int updateUserIntegral(UserIntegral userIntegral);
}
