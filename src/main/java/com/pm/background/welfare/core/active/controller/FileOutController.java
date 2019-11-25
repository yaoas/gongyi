package com.pm.background.welfare.core.active.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pm.background.common.base.controller.BaseController;
import com.pm.background.common.utils.R;
import com.pm.background.welfare.core.active.entity.ButtShop;
import com.pm.background.welfare.core.active.entity.FileOut;
import com.pm.background.welfare.core.active.service.FileOutService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

/**
 * 失败表记录controller
 */
@RestController
@RequestMapping("/smallApp/fileOut")
public class FileOutController extends BaseController {

    @Autowired
    private FileOutService fileOutService;

        /**
          * 列表查询
        */
        @GetMapping(value = "/page/list")
        public Object pageList(HttpServletRequest request, FileOut fileOut) {
            QueryWrapper qw = new QueryWrapper<ButtShop>();

            if (StringUtils.isNotEmpty(fileOut.getOrderId())) {
                qw.like("orderId", fileOut.getOrderId());
            }
            if (StringUtils.isNotEmpty(fileOut.getUserId())) {
                qw.like("userId", fileOut.getUserId());
            }
            qw.orderByDesc("create_time");
            IPage page = fileOutService.page(new Page(fileOut.getCurrentPage(), fileOut.getPageSize()), qw);
            return R.ok(page);
        }



}
