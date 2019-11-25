package com.pm.background.welfare.core.active.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pm.background.admin.common.shiro.ShiroUtils;
import com.pm.background.common.base.controller.BaseController;
import com.pm.background.common.utils.R;
import com.pm.background.welfare.core.active.entity.ReceivingInfo;
import com.pm.background.welfare.core.active.service.ReceivingInfoService;
import com.pm.background.welfare.core.active.service.SignInfoService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


/**
 * 限制个人只能查看个人的
 * 个人信息controller
 */
@RestController
@RequestMapping("/receivingInfo")
public class ReceivingInfoController extends BaseController {
    @Autowired
    private ReceivingInfoService receivingInfoService;
    @Autowired
    private SignInfoService signInfoService;

    /**
     * 姓名 电话 id
     * 分页查询列表
     */
    @GetMapping(value = "/page/list")
    public Object pageList(ReceivingInfo receivingInfo) {
        Long userId = ShiroUtils.getUserEntity().getId();
        QueryWrapper qw = new QueryWrapper<ReceivingInfo>();
        if (userId != 1) {
            if (receivingInfo.getCreateBy() != null) {
                qw.eq("create_by", userId);
            }
        }
        if (StringUtils.isNotEmpty(receivingInfo.getName())) {
            qw.like("name", receivingInfo.getName());
        }
        if (StringUtils.isNotEmpty(receivingInfo.getPhoneNum())) {
            qw.eq("phoneNum", receivingInfo.getPhoneNum());
        }
        if (StringUtils.isNotEmpty(receivingInfo.getAddress())) {
            qw.eq("phoneNum", receivingInfo.getAddress());
        }
        qw.orderByDesc("update_time");
        qw.orderByDesc("create_time");
        IPage page = receivingInfoService.page(new Page(receivingInfo.getCurrentPage(), receivingInfo.getPageSize()), qw);
        return R.ok(page);
    }

  @RequestMapping("/checkOnePeople")
  public  Object checkOnePeople(){
      Long userId = ShiroUtils.getUserEntity().getId();
      QueryWrapper qw = new QueryWrapper<ReceivingInfo>();
      qw.eq("create_by",userId);
      ReceivingInfo receivingInfo = receivingInfoService.getOne(qw);
      return R.ok(receivingInfo);
  }
//查看个人信息
  @RequestMapping("/queryInformation")
  public  Object queryInformation(@RequestBody  ReceivingInfo receivingInfo){
      receivingInfo = receivingInfoService.getById(receivingInfo.getId());
      return R.ok(receivingInfo);
  }
    /**
     * 添加个人信息
     *
     * @param receivingInfo
     * @return
     */
    @RequestMapping("/publishReceiving")
    public Object publishReceiving(@RequestBody ReceivingInfo receivingInfo) {
        Long userId = ShiroUtils.getUserEntity().getId();
        receivingInfo.setCreateBy(userId);
        boolean publishFlag = true;
        if(receivingInfo.getId() == null){
           publishFlag = receivingInfoService.saveOrUpdate(receivingInfo);
      }else{
            publishFlag =  receivingInfoService.updateById(receivingInfo);
      }
        if (publishFlag) {
            return R.ok("成功！");
        } else {
            return R.fail("失败！");
        }

    }

    /**
     * 修改
     *
     * @param receivingInfo
     * @return
     */

    @RequestMapping("/updateReceiving")
    public Object updateReceiving(@RequestBody ReceivingInfo receivingInfo) {
        if (StringUtils.isEmpty(receivingInfo.getName())) {
            return R.ok("姓名不能为空！");
        }
        if (StringUtils.isEmpty(receivingInfo.getAddress())) {
            return R.ok("地址不能为空！");
        }
        if (StringUtils.isEmpty(receivingInfo.getPhoneNum())) {
            return R.ok("联系方式不能为空");
        }
        Long userId = ShiroUtils.getUserEntity().getId();
        receivingInfo.setUpdateBy(userId);
        boolean updateReceivingFlag = receivingInfoService.updateById(receivingInfo);
        if (updateReceivingFlag) {
            return R.ok("修改成功！");
        } else {
            return R.fail("修改失败！");
        }
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public Object delete(String id) {
        long longId = Long.valueOf(id);
        boolean deleteFlag = receivingInfoService.removeById(longId);
        if (deleteFlag) {
            return R.ok("删除成功！");
        } else {
            return R.fail("删除失败！");
        }
    }

}
