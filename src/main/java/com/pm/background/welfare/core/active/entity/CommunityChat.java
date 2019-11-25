package com.pm.background.welfare.core.active.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.pm.background.common.base.entity.DataEntity;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
@TableName("communityChat")
public class CommunityChat {
    /**
     * 主键
     */
    @TableId
    private Long id;

    /**
     * 用户id
     */
    @TableField(value = "userId")
    private Long userId;
    /**
     * 聊天内容
     */
    @TableField(value = "content")
    private String content;
    /**
     * 用户名
     */
    @TableField(value = "userName")
    private String userName;

    /**
     * 聊天日期
     */
    private Date createTime;
    /**
     * 社区ID
     */
    @TableField(value = "communityId")
    private Long communityId;

    /**
     * 页码
     */
    @TableField(exist = false)
    private long currentPage;
    @TableField(exist = false)
    private long startPage;
    @TableField(exist = false)
    private long endPage;
    @TableField(exist = false)
    private String openId;




}
