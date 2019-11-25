package com.pm.background.welfare.core.active.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.pm.background.common.base.entity.DataEntity;
import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

import java.io.Serializable;

@Data
@TableName("realNameAuthentication")
public class RealNameAuthentication extends DataEntity<Long> {

    /**
     * 主键
     */
    @TableId
    private Long id;
    /**
     * 用户名
     */
    @TableField(value = "userName")
    private  String  userName;
    /**
     * 身份证号
     */
    @TableField(value = "idCard")
    private String idCard;
    /**
     * 手机号
     */
    @TableField(value = "telephone")
    private String telephone;

    /**
     * 正面照片
     */
    @TableField("positivePicture")
    private String positivePicture;
    /**
     * 背面照片
     */
    @TableField(value = "backPicture")
    private String backPicture;
    /**
     * 认证类型（1志愿者认证，2实名认证）
     */
    @TableField(value = "certificationType")
    private String certificationType;
    @TableField(value = "ifAgree")
    private String ifAgree;
    @TableField(value = "ifAgreeName")
    private String ifAgreeName;
    @TableField(exist = false)
    private String openId;




    @Override
    protected Serializable pkVal() {
        return null;
    }
}
