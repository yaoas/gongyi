package com.pm.background.welfare.core.active.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("active_info")
public class TestEntity {

    /**
     * 主键
     */
    @TableId
    private String id;
    /**
     * 活动标题
     */
    @TableField(value = "title")
    private String title;
    /**
     * 活动类型
     */
    @TableField(value = "detail")
    private String detail;
    /**
     * 活动类型名称
     */
    @TableField(value = "img_cover")
    private String img_cover;

    /**
     * 活动内容（富文本）
     */
    @TableField("img_detail")
    private String img_detail;
    /**
     * 备注
     */
    @TableField(value = "description_list")
    private String description_list;
    /**
     * 置顶标志
     */
    @TableField(value = "original_price")
    private String original_price;

    /**
     * 活动发布位置
     */
    @TableField(value = "goods_price")
    private String goods_price;

    /**
     * 活动是否需要审批
     * @return
     */
    @TableField(value = "min_price")
    private String min_price;
    /**
     * 审批名称
     * @return
     */
    @TableField(value = "tb_link")
    private String tb_link;


    /**
     * 创建者名
     */
    @TableField(value = "end_time")
    private  String end_time;
}
