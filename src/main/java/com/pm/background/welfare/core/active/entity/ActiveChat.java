package com.pm.background.welfare.core.active.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

@Data
@TableName("communityChat")
public class ActiveChat {
    /**
     * 主键
     */
    @TableId
    private Long id;

    /**
     * 用户
     */
    @TableField(value = "userName")
    private String userName;
    @TableField(value = "imagePictrue")
    private String imagePictrue;
    /**
     * 聊天内容
     */
    @TableField(value = "content")
    private String content;

    /**
     * 聊天日期
     */
    private Date createTime;
    /**
     * 活动ID
     */
    @TableField(value = "activeId")
    private Long activeId;
    @TableField(exist = false)
    private String openId;


}
