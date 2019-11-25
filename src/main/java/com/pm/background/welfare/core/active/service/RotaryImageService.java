package com.pm.background.welfare.core.active.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.pm.background.welfare.core.active.entity.RotaryImage;

public interface RotaryImageService extends IService<RotaryImage> {
    int ifExhibitionImage(RotaryImage rotaryImage);

}
