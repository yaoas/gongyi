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
@TableName("commodityType")
public class CommodityType extends RestEntity<Long> {

    //
    @TableId
    private Long id;
    // 上级ID，一级为0
    @TableField(value = "parent_id")
    private Long parentId;
    // 名称
    @TableField(value = "commodityTypename")
    private String commodityTypename;
    // 是否删除  -1：已删除  0：正常
    @TableField(value = "del_flag")
    private Integer delFlag;
    @TableField(exist = false)
    private List<?> children;
    @TableField(exist = false)
    private String label;

    @TableField(exist = false)
    private String pname;


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
