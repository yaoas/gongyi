package com.pm.background.welfare.core.active.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.pm.background.common.base.entity.DataEntity;
import lombok.Data;

import java.io.Serializable;

@Data
@TableName("rotary_image")
public class RotaryImage extends DataEntity<Long> {

    /**
     * 主键
     */
    @TableId
    private Long id;
    /**
     * 图片地址
     */
    @TableField(value = "imageAddress")
    private String imageAddress;

    /**
     * 活动ID
     */
    @TableField(value = "activeId")
    private Long activeId;

    /**
     * 活动名称
     */
    @TableField(value = "activeName")
     private String activeName;

    /**
     * 是否展示 1展示，2不展示
     */
    @TableField(value = "status")
    private Integer status;
    /**
     * 名称
     */
    @TableField(value = "statusName")
    private String statusName;
    /**
     * 颜色
     */
    @TableField(value = "colour")
    private String colour;
    @TableField(exist = false)
    private String openId;
    @Override
    protected Serializable pkVal() {
        return null;
    }
}
