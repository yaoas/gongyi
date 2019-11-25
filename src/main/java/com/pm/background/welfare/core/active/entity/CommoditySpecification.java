package com.pm.background.welfare.core.active.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.pm.background.common.base.entity.DataEntity;
import lombok.Data;

import java.io.Serializable;

@Data
@TableName("commodityspecification")
public class CommoditySpecification extends DataEntity<Long> {
    /**
     * 主键
     */
    @TableId
    private Long id;
    /**
     * 规格图片
     */
    @TableField(value = "specificationPicture")
    private String specificationPicture;
    /**
     * 规格
     */
    @TableField(value = "specification")
    private String specification;
    /**
     * 规格成本单价
     */
    @TableField(value = "unitPrice")
    private String unitPrice;
    /**
     * 商品id
     */
    @TableField(value = "platformCommodityId")
    private String platformCommodityId;
    /**
     * 积分
     */
    @TableField("integral")
    private String integral;
    /**
     * 溢价比例
     */
    @TableField("premium")
    private String premium;
    /**
     * 参考价
     */
    @TableField("preperPrice")
    private String preperPrice;
    /**
     * 购买价
     */
    @TableField("min_price")
    private String minPrice;
    @Override
    protected Serializable pkVal() {
        return null;
    }
}
