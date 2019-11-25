package com.pm.background.admin.sys.entity;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;


@Data
public class UserFeedback {

	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 反馈内容
	 */
	private String content;

}
