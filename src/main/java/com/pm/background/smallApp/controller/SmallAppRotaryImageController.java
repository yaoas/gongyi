package com.pm.background.smallApp.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pm.background.admin.fastdfs.FastDFSClient;
import com.pm.background.admin.sys.service.IDictService;
import com.pm.background.common.base.controller.BaseController;
import com.pm.background.common.utils.R;
import com.pm.background.common.utils.WeixinUtil;
import com.pm.background.welfare.core.active.entity.ActiveInfo;
import com.pm.background.welfare.core.active.entity.ReceivingInfo;
import com.pm.background.welfare.core.active.entity.RotaryImage;
import com.pm.background.welfare.core.active.service.IActiveInfoService;
import com.pm.background.welfare.core.active.service.RotaryImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


/**
 * 轮播图controller
 */
@RestController
@RequestMapping("/smallApp/rotaryImage")
public class SmallAppRotaryImageController extends BaseController {
    @Autowired
    private IActiveInfoService iActiveInfoService;
    @Autowired
    private RotaryImageService rotaryImageService;
    @Autowired
    private IDictService iDictService;

    /**
     * 分页查询列表 17 启用
     */
    @GetMapping(value = "/page/list")
    public Object pageList(RotaryImage rotaryImage) {
        QueryWrapper qw = new QueryWrapper<ReceivingInfo>();
        if (rotaryImage.getStatus() != null) {
            qw.eq("status", rotaryImage.getStatus());
        }
        qw.orderByDesc("update_time");
        qw.orderByDesc("create_time");
        IPage page = rotaryImageService.page(new Page(rotaryImage.getCurrentPage(), rotaryImage.getPageSize()), qw);
        return R.ok(page);
    }

    /**
     * 小程序轮播图
     *
     * @param rotaryImage(status)
     * @return
     */
    @GetMapping(value = "/list")
    public R list(RotaryImage rotaryImage) {
        QueryWrapper qw = new QueryWrapper<ReceivingInfo>();
        qw.eq("status", rotaryImage.getStatus());
        List<RotaryImage> rotaryImageList = rotaryImageService.list(qw);
        return R.ok(rotaryImageList);
    }

    /**
     * 启动轮播图
     */
    @Transactional
    @RequestMapping("/exhibitionImage")
    public Object exhibitionImage(@RequestBody RotaryImage rotaryImage) {
        String statusName = iDictService.byIdGetName(rotaryImage.getStatus());
        rotaryImage.setStatusName(statusName);
        int i = rotaryImageService.ifExhibitionImage(rotaryImage);
        if (i > 0) {
            return R.ok("启用成功！");
        } else {
            return R.fail("启用失败！");
        }
    }

    /**
     * 禁用
     */
    @Transactional
    @RequestMapping("/prohibitExhibitionImage")
    public Object prohibitExhibitionImage(@RequestBody RotaryImage rotaryImage) {
        String statusName = iDictService.byIdGetName(rotaryImage.getStatus());
        rotaryImage.setStatusName(statusName);
        int i = rotaryImageService.ifExhibitionImage(rotaryImage);
        if (i > 0) {
            return R.ok("禁用成功！");
        } else {
            return R.fail("禁用失败！");
        }
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public Object delete(@RequestBody RotaryImage rotaryImage) {
        boolean deleteFlag = rotaryImageService.removeById(rotaryImage.getId());
        String path = rotaryImage.getImageAddress();
        if (path != null && "".equals(path)) {

            String pathFile[] = path.split("https://fdfs.baodingjl.com/");
            String strongPath[] = pathFile[1].split("/M00");
            String relPath = "M00" + strongPath[1];
            try {
               WeixinUtil.deleteReturnPatn(relPath);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (deleteFlag) {
            return R.ok("删除成功！");
        } else {
            return R.fail("删除失败！");
        }
    }

}
