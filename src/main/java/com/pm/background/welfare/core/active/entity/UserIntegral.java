package com.pm.background.welfare.core.active.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.pm.background.common.base.entity.DataEntity;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
@TableName("integralTable")
public class UserIntegral {

    /**
     * 主键
     */
    @TableId
    private Long id;
    /**
     * 用户ID
     */
    @TableField(value = "userId")
    private Long userId;
    /**
     * 积分
     */
    @TableField(value = "userIntegral")
    private Float userIntegral;

}
