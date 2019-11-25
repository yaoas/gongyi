package com.pm.background.welfare.core.active.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.pm.background.common.base.entity.DataEntity;
import lombok.Data;

import java.io.Serializable;

@Data
@TableName("order_info")
public class OrderInfo extends DataEntity<Long> {

    /**
     * 主键
     */
    @TableId
    private Long id;
    /**
     * 商品ID
     */
    @TableField(value = "product_id")
    private Long productId;
    /**
     * 商品名称
     */
    @TableField(value = "productName")
    private  String  productName;
    /**
     * 商品数量
     */
    @TableField(value = "product_count")
    private Integer productCount;
    /**
     * 订单人id
     */
    @TableField(value = "receive_info_id")
    private Long receiveInfoId;

    /**
     * 总价
     */
    @TableField("total_price")
    private String totalPrice;
    /**
     * 备注
     */
    @TableField(value = "remark")
    private String remark;

    /**
     * 订单类型
     * 48电子券，47实物
     */
    @TableField(value = "orderType")
    private String orderType;
    /**
     * 使用状态
     * 1已经使用，2未使用
     */
    @TableField(value = "useStatus")
    private String useStatus;

    /**
     * 支付类型
     * 1.积分，2.现金，3.混合
     */
    @TableField(value = "payType")
    private String payType;

    /**
     * 花费积分
     * @return
     */
    @TableField(value = "costIntegral")
    private  String costIntegral;
    /**
     * 花费现金
     */
    @TableField(value = "costCash")
    private  String costCash;
    /**
     * 成本价
     */
    @TableField(value = "preperPriceAll")
    private  String preperPriceAll;
    /**
     * 电子券id
     */
    @TableField(exist = false)
    private  Long  ponId;
    /**
     * 付款状态1已付款2未付款
     */
    @TableField(value = "paymentStatus")
    private  String paymentStatus;
    /**
     * 付款状态1已付款2未付款
     */
    @TableField(value = "paymentStatusName")
    private  String paymentStatusName;
    /**
     */
    @TableField(exist = false)
    private  String openId;
    /**
     * 商品规格
     */
    @TableField(value = "specificationsName")
    private  String specificationsName;

    /**
     * 商户订单号
     */
    @TableField(value = "outTradeNo")
    private  String outTradeNo;
    /**
     * 商品购买单价
     */
    @TableField(value = "unitPrice")
    private  String unitPrice;

    @TableField(exist = false)
    private  String orderUserName;
    @TableField(exist = false)
    private  String orderUserAddress;
    @TableField(exist = false)
    private  String orderUserPhoneNum;
    /**
     * 商品规格id
     */
    @TableField(exist = false)
    private  String commodityGuiId;

    /**
     * 1商家2平台自营
     */
    @TableField(value = "ifIsPlatformCommodity")
    private  String ifIsPlatformCommodity;
    /**
     * 发货状态（0未发货1已发货2确认收货）
     */
    @TableField(value = "sentGoodsStatus")
    private  String sentGoodsStatus;

    @TableField(value = "sentGoodsStatusName")
    private  String sentGoodsStatusName;
    /**
     * 物流号
     */
    @TableField(value = "logisticsNumber")
    private  String logisticsNumber;
    /**
     * 退款状态
     */
    @TableField(value = "returnMoneyStatus")
    private  String returnMoneyStatus;
    /**
     * 订单商品图
     */
    @TableField(value = "orderProductPicture")
    private  String orderProductPicture;

    /**
     * 供货商id
     */
    @TableField(value = "productUserId")
    private  String productUserId;
    /**
     * 供货商id
     */
    @TableField(value = "productUserName")
    private  String productUserName;

    /**
     * 开始时间
     * @return
     */
    @TableField(exist = false)
    private  String startTime;

    /**
     * 结束时间
     * @return
     */
    @TableField(exist = false)
    private  String endTime;
    /**
     * 开始条
     * @return
     */
    @TableField(exist = false)
    private  int startSize;
    /**
     * 结束条
     * @return
     */
    @TableField(exist = false)
    private  int endSize;



    @Override
    protected Serializable pkVal() {
        return null;
    }
}
