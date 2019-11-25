package com.pm.background.welfare.core.active.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pm.background.welfare.core.active.dao.RotaryImageMapper;
import com.pm.background.welfare.core.active.entity.RotaryImage;
import com.pm.background.welfare.core.active.service.RotaryImageService;
import org.springframework.stereotype.Service;

@Service
public class RotaryImageServiceImpl extends ServiceImpl<RotaryImageMapper, RotaryImage> implements RotaryImageService {
    @Override
    public int ifExhibitionImage(RotaryImage rotaryImage) {
        return baseMapper.ifExhibitionImage(rotaryImage);
    }
}
