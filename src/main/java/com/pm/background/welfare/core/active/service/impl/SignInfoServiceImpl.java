package com.pm.background.welfare.core.active.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pm.background.welfare.core.active.dao.SignInfoMapper;
import com.pm.background.welfare.core.active.entity.SignInfo;
import com.pm.background.welfare.core.active.entity.UserIntegral;
import com.pm.background.welfare.core.active.service.SignInfoService;
import org.springframework.stereotype.Service;

@Service
public class SignInfoServiceImpl extends ServiceImpl<SignInfoMapper, SignInfo> implements SignInfoService {
    @Override
    public int startToSignTime(SignInfo signInfo) {
        return baseMapper.startToSignTime(signInfo);
    }

    public boolean updateStatus(SignInfo signInfo) {
        int count = baseMapper.updateStatus(signInfo);
        if (count > 0) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public int signUpActiveInfo(SignInfo signInfo) {
        return baseMapper.signUpActiveInfo(signInfo);
    }

    @Override
    public int startSignInfo(SignInfo signInfo) {
        return baseMapper.startSignInfo(signInfo);
    }

    @Override
    public int endSignInfo(SignInfo signInfo) {
        return baseMapper.endSignInfo(signInfo);
    }

    @Override
    public int insertIntegral(UserIntegral userIntegral) {
        return baseMapper.insertIntegral(userIntegral);
    }

    @Override
    public UserIntegral selectIntegralUser(Long id) {
        return baseMapper.selectIntegralUser(id);
    }

    @Override
    public int updateUserIntegral(UserIntegral userIntegral) {
        return baseMapper.updateUserIntegral(userIntegral);
    }
}
