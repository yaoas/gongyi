package com.pm.background.welfare.core.active.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.pm.background.common.base.entity.DataEntity;
import lombok.Data;

import java.io.Serializable;

@Data
@TableName("buttShop")
public class ButtShop extends DataEntity<Long> {

    /**
     * 主键
     */
    @TableId
    private Long id;
    /**
     * 商品标题
     */
    @TableField(value = "title")
    private String title;
    /**
     * 商品详情
     */
    @TableField(value = "detail")
    private String detail;
    /**
     * 商品图
     */
    @TableField(value = "img_cover")
    private String imgCover;

    /**
     * 商品详情图
     */
    @TableField("img_detail")
    private String imgDetail;
    /**
     * 商品描述图
     */
    @TableField("description_list")
    private String descriptionList;
    /**
     * 天猫价
     */
    @TableField("original_price")
    private String originalPrice;
    /**
     * 普通购买价
     */
    @TableField("goods_price")
    private String goodsPrice;
    /**
     * 最低价
     */
    @TableField("min_price")
    private String minPrice;
    /**
     * 淘宝链接
     */
    @TableField("tb_link")
    private String tbLink;
    /**
     * 剩余时间
     */
    @TableField("end_time")
    private String endTime;
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
     * 是否为本平台商品
     */
    @TableField("status")
    private String status;
    /**
     * 限制条数
     */
    @TableField(exist = false)
    private String limitSize;

    /**
     * 用于小程序控制是否有地址显示
     * @return
     */
    @TableField(exist = false)
    private String type;




    @Override
    protected Serializable pkVal() {
        return null;
    }
}
