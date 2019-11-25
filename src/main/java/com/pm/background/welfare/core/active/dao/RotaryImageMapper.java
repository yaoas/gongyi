package com.pm.background.welfare.core.active.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.pm.background.welfare.core.active.entity.RotaryImage;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface RotaryImageMapper extends BaseMapper<RotaryImage> {
    int ifExhibitionImage(RotaryImage rotaryImage);
}
