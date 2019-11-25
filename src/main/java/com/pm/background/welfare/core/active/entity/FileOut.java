package com.pm.background.welfare.core.active.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.pm.background.common.base.entity.DataEntity;
import lombok.Data;

import java.io.Serializable;

@Data
@TableName("failout")
public class FileOut extends DataEntity<Long> {

    /**
     * 主键
     */
    @TableId
    private Long id;
    /**
     * 失败原因
     */
    @TableField(value = "content")
    private String content;
    /**
     * 订单id
     */
    @TableField(value = "orderId")
    private String orderId;
    /**
     * 下订单人
     */
    @TableField(value = "userId")
    private String userId;
    @Override
    protected Serializable pkVal() {
        return null;
    }
}
