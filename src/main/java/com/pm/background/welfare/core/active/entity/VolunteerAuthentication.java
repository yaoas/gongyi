package com.pm.background.welfare.core.active.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.pm.background.common.base.entity.DataEntity;
import lombok.Data;

import java.io.Serializable;

@Data
@TableName("VolunteerAuthentication")
public class VolunteerAuthentication extends DataEntity<Long> {

    /**
     * 主键
     */
    @TableId
    private Long id;
    /**
     * 用户名
     */
    @TableField(value = "name")
    private  String  name;
    @TableField(value = "sex")
    private String sex;
    @TableField(value = "birthDate")
    private String birthDate;
    @TableField(value = "nationality")
    private String nationality;
    @TableField(value = "politicalIdentity")
    private String politicalIdentity;
    @TableField(value = "belief")
    private String belief;
    @TableField(value = "educationDegree")
    private String educationDegree;
    @TableField(value = "nation")
    private String nation;
    @TableField(value = "maritalStatus")
    private String maritalStatus;
    @TableField(value = "workUnity")
    private String workUnity;
    @TableField(value = "position")
    private String position;
    @TableField(value = "certificate")
    private String certificate;
    @TableField(value = "email")
    private String email;
    @TableField(value = "qq")
    private String qq;
    @TableField(value = "weChat")
    private String weChat;
    @TableField(value = "cellPhone")
    private String cellPhone;
    @TableField(value = "telNumber")
    private String telNumber;
    @TableField(value = "nowAddress")
    private String nowAddress;
    @TableField(value = "organization")
    private String organization;
    @TableField(value = "spareTime")
    private String spareTime;
    @TableField(value = "spareTimeName")
    private String spareTimeName;
    @TableField(value = "hobby")
    private String hobby;
    @TableField(value = "programChoose")
    private String programChoose;
    @TableField(value = "programChooseName")
    private String programChooseName;
    @TableField(value = "remarks")
    private String remarks;
    @TableField(value = "ifAgree")
    private String ifAgree;
    @TableField(value = "ifAgreeName")
    private String ifAgreeName;

    /**
     * 正面照片
     */
    @TableField("idCardPositive")
    private String idCardPositive;
    /**
     * 背面照片
     */
    @TableField(value = "idCardBack")
    private String idCardBack;
    @TableField(exist = false)
    private String openId;




    @Override
    protected Serializable pkVal() {
        return null;
    }
}
