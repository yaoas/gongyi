package com.pm.background.welfare.core.active.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.pm.background.welfare.core.active.entity.SignInfo;
import com.pm.background.welfare.core.active.entity.UserIntegral;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

/**
 * 商品管理
 *
 * @author yas
 */
@Repository
@Mapper
public interface SignInfoMapper extends BaseMapper<SignInfo> {
    int startToSignTime(SignInfo signInfo);

    //报名活动
    int signUpActiveInfo(SignInfo signInfo);

    //更改审批状态
    int updateStatus(SignInfo signInfo);

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
