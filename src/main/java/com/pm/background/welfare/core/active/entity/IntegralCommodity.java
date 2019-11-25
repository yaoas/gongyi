package com.pm.background.welfare.core.active.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.pm.background.common.base.entity.DataEntity;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
@TableName("integralMall")
public class IntegralCommodity {

    /**
     * 主键
     */
    @TableId
    private Long id;
    /**
     * 积分商品名
     */
    @TableField(value = "title")
    private String title;
    /**
     * 类型
     */
    @TableField(value = "popularType")
    private String popularType;
    /**
     * 图片地址
     */
    @TableField(value = "imageAddress")
    private String imageAddress;

    private  int currentPage;
    private  int startSize;
    private  int endSize;
}
