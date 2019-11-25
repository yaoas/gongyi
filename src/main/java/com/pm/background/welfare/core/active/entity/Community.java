package com.pm.background.welfare.core.active.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.pm.background.common.base.entity.DataEntity;
import lombok.Data;

import java.io.Serializable;

@Data
@TableName("community")
public class Community extends DataEntity<Long> {

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
     * 社区人数
     */
    @TableField(value = "peopleNumber")
    private Integer peopleNumber;
    /**
     * 创建人名
     */
    @TableField(value = "createName")
    private String createName;
    @TableField(value = "imagePicture")
    private String imagePicture;

    /**
     * 社区创建目的
     */
    @TableField(value = "communityContent")
    private  String communityContent;

    //用来判断是本人社区还是其他社区
    private  String ifOtherUser;
    @TableField(exist = false)
    private String limit;
    @TableField(exist = false)
    private String openId;

    @Override
    protected Serializable pkVal() {
        return null;
    }
}
