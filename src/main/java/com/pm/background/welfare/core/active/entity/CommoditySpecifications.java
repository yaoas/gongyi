package com.pm.background.welfare.core.active.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.pm.background.common.base.entity.RestEntity;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;


/**
 * 商品种类管理
 *
 * @author hs
 */
@Data
@NoArgsConstructor
@TableName("commoditySpecifications")
public class CommoditySpecifications extends RestEntity<Long> {


    @TableId
    private Long id;

    @TableField(value = "specificationsName")
    private String specificationsName;
    // 种类id
    @TableField(value = "commodityTypeId")
    private String commodityTypeId;
    @TableField(value = "commodityTypeName")
    private String commodityTypeName;
    @Override
    public Long getId() {
        return id;
    }

    @Override
    public void setId(Long id) {
        this.id = id;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }
}
