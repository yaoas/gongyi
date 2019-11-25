package com.pm.background.welfare.core.active.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.pm.background.common.base.entity.CustomEntity;
import lombok.Data;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

@Data
@TableName("sys_commodity")
public class Commodity extends CustomEntity<Long> {

    /**
     * 主键AbstractEntity
     */
    @TableId
    private Long id;
    /**
     * 商品base64
     */
    @TableField(value = "base64")
    private String base64;
    /**
     * 图片类型
     */
    @TableField(value = "imageType")
    private String imageType;
    /**
     * 名称
     */
    @TableField(value = "name")
    private String name;
    /**
     * 商品类型
     */
    @TableField(value = "type")
    private Integer type;
    /**
     * 商品类型名称
     */
    @TableField(value = "typeName")
    private String typeName;
    /**
     * 商品说明
     */
    @TableField("description")
    private String description;
    /**
     * 单价
     */
    @TableField(value = "unitPrice")
    private float unitPrice;
    /**
     * 地址
     */
    @TableField(value = "address")
    private String address;
    /**
     * 数量
     */
    @TableField(value = "number")
    private int number;

    /**
     * 支付类型
     */
    @TableField(value="payType")
    private String payType;
    /**
     * 支付类型名称
     */
    @TableField(value="payTypeName")
    private String payTypeName;

    /**
     * 上架状态（上架50/下架51）
     */
    @TableField(value="status")
    private Integer status;
    /**
     * 状态名称
     */
    @TableField(value="statusName")
    private String statusName;
    /**
     * 用户ID
     */
    @TableField(value="userId")
    private Long userId;
    /**
     * 二维码地址
     */
    @TableField(value="codeAddress")
    private String codeAddress;
    /**
     * 绑定状态
     * @return
     */
    @TableField(value = "bindingStatus")
    private String bindingStatus;
    /**
     * 商品运费
     */
    @TableField(value = "freight")
    private  float freight;
    /**
     * 最高兑换积分
     */
    @TableField(value = "maxIntegral")
    private  float maxIntegral;
    /**
     * 抵扣比例
     */
    @TableField(value = "cationRatioId")
    private  Long cationRatioId;   /**
     * 抵扣比例分
     */
    @TableField(value = "cationRatio")
    private  String cationRatio;
    /**
     * 商品规格
     */
    @TableField(value = "commoditySpecifications")
    private  String commoditySpecifications;
    @TableField(value = "commodityTypeId")
    private  String commodityTypeId;
    @TableField(value = "commodityTypename")
    private  String commodityTypename;
    @TableField(value = "commoditySpecificationsArray")
    private  String commoditySpecificationsArray;
    @TableField(value = "commoditySpecificationsJson")
    private  String commoditySpecificationsJson;
    @TableField(value = "commoditySpecificationsArrayJson")
    private  String commoditySpecificationsArrayJson;
    @TableField(exist = false)
    private List listMap;

    //抵扣比例
    @TableField(exist = false)
    private float ratio;
    @TableField(exist = false)
    private String openId;



    @Override
    protected Serializable pkVal() {
        return null;
    }
}
