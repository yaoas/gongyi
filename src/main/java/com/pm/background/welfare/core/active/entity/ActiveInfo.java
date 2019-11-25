package com.pm.background.welfare.core.active.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.pm.background.common.base.entity.DataEntity;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
@TableName("active_info")
public class ActiveInfo extends DataEntity<Long> {

    /**
     * 主键
     */
    @TableId
    private Long id;
    /**
     * 活动标题
     */
    @TableField(value = "title")
    private String title;
    /**
     * 活动类型
     */
    @TableField(value = "type")
    private Integer type;
    /**
     * 活动类型名称
     */
    @TableField(value = "typeName")
    private String typeName;

    /**
     * 活动内容（富文本）
     */
    @TableField("content")
    private String content;
    /**
     * 备注
     */
    @TableField(value = "remark")
    private String remark;
    /**
     * 置顶标志
     */
    @TableField(value = "topStatus")
    private String topStatus;

    /**
     * 活动发布位置
     */
    @TableField(value = "activePosition")
    private String activePosition;

    /**
     * 活动是否需要审批
     * @return
     */
    @TableField(value = "status")
    private String status;
    /**
     * 审批名称
     * @return
     */
    @TableField(value = "statusName")
    private String statusName;


    /**
     * 创建者名
     */
    @TableField(value = "createByName")
    private  String createByName;

    /**
     *
     */
   @TableField(value = "topStatusName")
   private  String topStatusName;

    /**
     * 绑定状态
     * @return
     */
    @TableField(value = "bindingStatus")
    private String bindingStatus;/**
     * 图片地址
     * @return
     */
    @TableField(value = "imageAddress")
    private String imageAddress;
    //点赞数
    @TableField(value = "activeFabulous")
    private int activeFabulous;
    @TableField(value = "locationPosition")
    private  String  locationPosition;
    /**
     * 活动经度
     */
    @TableField(value = "longitude")
    private  String longitude;
    /**
     * 活动维度
     */
    @TableField(value = "dimension")
    private  String dimension;
    /**
     * 开始时间
     */
    @TableField(value = "startTime")
    private Date startTime;
    @TableField(exist = false)
    private String startSize;
    /**
     * 结束时间
     */
    @TableField(value = "endTime")
    private Date endTime;

    @TableField(exist = false)
    private  String signUpStatus;

    @TableField(exist = false)
    private  Long  signId;
    @TableField(exist = false)
    private  String  clockStatus;
  //商品id
    @TableField(exist = false)
    private  Long  commodityId;
    @TableField(exist = false)
    private  String  commodityName;
    @TableField(exist = false)
    private  String  ifEndActive;

    @TableField(exist = false)
    private String limit;
    @TableField(exist = false)
    private String openId;
    //是否点赞
    @TableField(exist = false)
    private String ifActiveFabulous;
    @Override
    protected Serializable pkVal() {
        return null;
    }
}
