package com.pm.background.welfare.core.active.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.pm.background.common.base.entity.CustomEntity;
import com.pm.background.common.base.entity.DataEntity;
import lombok.Data;
import net.sf.jsqlparser.expression.ValueListExpression;

import java.io.Serializable;
import java.util.Date;

@Data
@TableName("community_invited")
public class CommunityInvited extends CustomEntity<Long> {
    /**
     * 主键
     */
    @TableId
    private Long id;
    /**
     * 社区名
     */
    @TableField(value = "communityName")
    private String communityName;
    /**
     * 社区ID
     */
    @TableField(value = "communityId")
    private Long communityId;
    /**
     * 社区创建人
     */
    @TableField(value = "createUserName")
    private String createUserName;

    /**
     * 社区被邀请人数组ID
     */
    @TableField(exist = false)
    private  Long [] arrayUserId;

    /**
     * 社区被邀请人ID
     */
    @TableField(value = "userId")
    private  Long  userId;
    /**
     * 社区被邀请人
     */
    @TableField(value = "userName")
    private  String  userName;

    /**
     * 社区创建人
     * @return
     */
    @TableField(value = "createUserId")
    private  Long  createUserId;

    /**
     * 社区头像
     * @return
     */
    @TableField(value =  "imageAddress")
    private String   imageAddress;
    @TableField(exist = false)
    private String openId;


    @Override
    protected Serializable pkVal() {
        return null;
    }
}
