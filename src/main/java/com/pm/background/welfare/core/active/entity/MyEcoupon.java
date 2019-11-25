package com.pm.background.welfare.core.active.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
public class MyEcoupon {
    /**
     * 订单id
     */
    private  Long id;
    /**
     * 金额
     */
    private Float unitPrice;
    /**
     * 标题
     */
    private  String title;

    /**
     * 使用状态
     */
    private  String useStatus;

    /**
     * 页码
     */
    private int currentPage;
    /**
     * 支付状态
     */
    private  String payStatus;
    private  Long orderId;
    /**
     * 用户id
     */
    private  Long userId;
    /**
     * 二维码
     */
    private  String codeAddress;
    /**
     * 开始结束页
     */
    private  int startSize;
    private  int endSize;
    @TableField(exist = false)
    private String openId;

}
