package com.pm.background.welfare.core.active.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.pm.background.common.base.entity.DataEntity;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
@TableName("platformCommodity")
public class PlatformCommodity extends DataEntity<Long> {

    /**
     * 主键
     */
    @TableId
    private Long id;
    /**
     * 商品标题
     */
    @TableField(value = "title")
    private String title;
    /**
     * 商品详情
     */
    @TableField(value = "detail")
    private String detail;
    /**
     * 商品图
     */
    @TableField(value = "img_cover")
    private String imgCover;

    /**
     * 商品详情图
     */
    @TableField("img_detail")
    private String imgDetail;
    /**
     * 商品描述图
     */
    @TableField("description_list")
    private String descriptionList;
    /**
     * 成本价
     */
    @TableField("original_price")
    private String originalPrice;
    /**
     * 成本价
     */
    @TableField("goods_price")
    private String goodsPrice;
    /**
     * 购买价
     */
    @TableField("min_price")
    private String minPrice;
    /**
     * 参考价
     */
    @TableField("preperPrice")
    private String preperPrice;
    /**
     * 淘宝链接
     */
    @TableField("tb_link")
    private String tbLink;
    /**
     * 剩余时间
     */
    @TableField("end_time")
    private String endTime;
    /**
     * 积分
     */
    @TableField("integral")
    private String integral;
    /**
     * 溢价比例
     */
    @TableField("premium")
    private String premium;
    /**
     * 限制条数
     */
    @TableField(exist = false)
    private String limitSize;

    /**
     * 用于小程序控制是否有地址显示
     * @return
     */
    @TableField(exist = false)
    private String type;
    /**
     * 上架状态0未上架1上架2下架
     */
    @TableField(value = "status")
    private  String    status;
    /**
     * 上架状态名0未上架1上架2下架
     */
    @TableField(value = "statusName")
    private  String    statusName;

    /**
     * 是否是批量更改溢价或者积分
     * @return
     */
    @TableField(exist = false)
    private String ifBatchUpdate;
    @TableField(value = "createByName")
    private  String    createByName;

    /**
     * 商品规格
     * @return
     */
    @TableField(exist = false)
    private List<CommoditySpecification> map;

    @Override
    protected Serializable pkVal() {
        return null;
    }
}
