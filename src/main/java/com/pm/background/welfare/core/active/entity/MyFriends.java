package com.pm.background.welfare.core.active.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.pm.background.common.base.entity.DataEntity;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
@TableName("myFriends")
public class MyFriends extends DataEntity<Long> {

    /**
     * 主键
     */
    @TableId
    private Long id;
    /**
     * 用户id
     */
    @TableField(value = "myId")
    private Long myId;
    /**
     * 朋友id
     */
    @TableField(value = "myFriendId")
    private Long myFriendId;
    /**
     * 朋友头像
     */
    @TableField(value = "myFriendPicture")
    private String myFriendPicture;
    /**
     * 朋友名
     */
    @TableField(value = "myFriendName")
    private String myFriendName;

    /**
     * 是否同意为好友
     * @return
     */
    @TableField(value = "ifAgree")
    private String ifAgree;
    @TableField(exist = false)
    private String openId;
    @Override
    protected Serializable pkVal() {
        return null;
    }
}
