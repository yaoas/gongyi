package com.pm.background.welfare.core.active.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.pm.background.common.base.entity.DataEntity;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
@TableName("deductionRatio")
public class DudecationRatio extends DataEntity<Long> {

    /**
     * 主键
     */
    @TableId
    private Long id;
    /**
     * 兑换比例
     */
    @TableField(value = "ratio")
    private String ratio;

    @Override
    protected Serializable pkVal() {
        return null;
    }
}
