package com.pm.background.welfare.core.active.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.pm.background.common.base.entity.DataEntity;
import lombok.Data;

import java.io.Serializable;

@Data
@TableName("binding_commodity")
public class BindingCommodity {


    /**
     * 活动Id
     */
    @TableField(value = "activeId")
    private Long activeId;
    /**
     * 商品Id
     */
    @TableField(value = "commodityId")
    private Long commodityId;

}
