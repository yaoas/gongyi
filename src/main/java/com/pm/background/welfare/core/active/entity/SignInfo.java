package com.pm.background.welfare.core.active.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.pm.background.common.base.entity.DataEntity;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
@TableName("sign_info")
public class SignInfo extends DataEntity<Long> {

    /**
     * 主键
     */
    @TableId
    private Long id;
    /**
     * 活动id
     */
    @TableField(value = "active_id")
    private Long activeId;
    /**
     * 用户Id
     */
    @TableField(value = "user_id")
    private Long userId;
    /**
     * 头像
     */
    @TableField(value = "avatar")
    private String avatar;

    /**
     * 开始时间
     */
    @TableField(value = "start_time")
    private Date startTime;
    /**
     * 结束时间
     */
    @TableField(value = "end_time")
    private Date endTime;
    /**
     * 工时
     */
    @TableField(value = "active_hour")
    private float activeHour;
    /**
     * 活动名称
     */
    @TableField(value = "activeName")
    private String activeName;
    /**
     * 参与用户名
     */
    @TableField(value = "userName")
    private String userName;
    /**
     * 参与状态
     */
    @TableField(value = "approvalStatus")
    private String approvalStatus;
    /**
     * 活动创建人
     */
    @TableField(value = "activeCreateUserId")
    private Long activeCreateUserId;
    /**
     * 活动创建人名称
     */
    @TableField(value = "activeCreateUserName")
    private String activeCreateUserName;
    /**
     * 审批状态名
     */
    @TableField(value = "approvalStatusName")
    private String approvalStatusName;

    /**
     * 打卡人照片
     */
    @TableField(value = "imagePicture")
    private String imagePicture;
    /**
     * 打卡人照片
     */
    @TableField(value = "imageEndPicture")
    private String imageEndPicture;
    /**
     * 备注
     * @return
     */
    @TableField(value = "remark")
    private String remark;
    /**
     * 打卡状态
     */
    @TableField(value = "clockStatus")
    private String clockStatus;
      /**
     * 报名状态（0立即报名1审核中2立即参与）
     */
    @TableField(value = "signUpStatus")
    private String signUpStatus;
    @TableField(exist = false)
    private String openId;
    @Override
    protected Serializable pkVal() {
        return null;
    }
}
