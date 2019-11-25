package com.pm.background.welfare.core.active.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.pm.background.common.base.entity.DataEntity;
import lombok.Data;

import java.io.Serializable;

@Data
@TableName("receiving_info")
public class ReceivingInfo extends DataEntity<Long> {

    /**
     * 主键
     */
    @TableId
    private Long id;
    /**
     * 姓名
     */
    @TableField(value = "name")
    private String name;
    /**
     * 地址
     */
    @TableField(value = "address")
    private String address;
    /**
     * 手机号
     */
    @TableField(value = "phoneNum")
    private String phoneNum;
    /**
     * 备注
     */
    @TableField(value = "remark")
    private String remark;

    @TableField(exist = false)
    private String openId;
    @Override
    protected Serializable pkVal() {
        return null;
    }
}
