package com.pm.background.welfare.core.active.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.pm.background.common.base.entity.DataEntity;
import lombok.Data;

import java.io.Serializable;

@Data
@TableName("enterpriseCertification")
public class EnterpriseCertification extends DataEntity<Long> {

    /**
     * 主键
     */
    @TableId
    private Long id;
    /**
     * 企业名称
     */
    @TableField(value = "enterpriseName")
    private  String  enterpriseName;
    /**
     * 营业执照编号
     */
    @TableField(value = "busLicenseNumber")
    private String busLicenseNumber;
    /**
     * 法人
     */
    @TableField(value = "corporateLegalPerson")
    private String corporateLegalPerson;

    /**
     * 法人联系方式
     */
    @TableField("legalPersonTelephone")
    private String legalPersonTelephone;
    /**
     * 营业执照照片
     */
    @TableField(value = "busLicensePicture")
    private String busLicensePicture;
    @TableField(exist = false)
    private String openId;

    @Override
    protected Serializable pkVal() {
        return null;
    }
}
