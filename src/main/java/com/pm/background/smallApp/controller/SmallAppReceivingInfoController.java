package com.pm.background.smallApp.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pm.background.admin.sys.entity.User;
import com.pm.background.admin.sys.service.IUserService;
import com.pm.background.common.base.controller.BaseController;
import com.pm.background.common.utils.R;
import com.pm.background.welfare.core.active.entity.ReceivingInfo;
import com.pm.background.welfare.core.active.service.ReceivingInfoService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;


/**
 * 限制个人只能查看个人的
 * 个人信息controller
 */
@RestController
@RequestMapping("/smallApp/receivingInfo")
public class SmallAppReceivingInfoController extends BaseController {
    @Autowired
    private ReceivingInfoService receivingInfoService;
    @Autowired
    private IUserService userService;

    /**
     * 姓名 电话 id
     * 分页查询列表
     */
    @GetMapping(value = "/page/list")
    public Object pageList(HttpServletRequest request,ReceivingInfo receivingInfo) {
        if(receivingInfo.getOpenId()==null||"".equals(receivingInfo.getOpenId())){
            QueryWrapper qw = new QueryWrapper<ReceivingInfo>();
            IPage page = receivingInfoService.page(new Page(receivingInfo.getCurrentPage(), receivingInfo.getPageSize()), qw);
            return R.ok(page);
        }else {
            User user = userService.byAccountGetId(receivingInfo.getOpenId());
            Long userId = user.getId();
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
            IPage page = receivingInfoService.page(new Page(receivingInfo.getCurrentPage(), receivingInfo.getPageSize()), qw);
            return R.ok(page);
        }

    }

  @RequestMapping("/checkOnePeople")
  public  Object checkOnePeople(String openId){
      if(openId==null||"".equals(openId)){
          R.ok();
      }
      User user = userService.byAccountGetId(openId);
      Long userId = user.getId();
      QueryWrapper qw = new QueryWrapper<ReceivingInfo>();
      qw.eq("create_by",userId);
      ReceivingInfo receivingInfo = receivingInfoService.getOne(qw);
      return R.ok(receivingInfo);
  }
    /**
     * 添加个人信息
     *
     * @param receivingInfo
     * @return
     */
    @RequestMapping("/publishReceiving")
    public Object publishReceiving(HttpServletRequest request,@RequestBody ReceivingInfo receivingInfo) {
        if(receivingInfo.getOpenId()==null||"".equals(receivingInfo.getOpenId())){
            R.fail("请先登录");
        }
        User user = userService.byAccountGetId(receivingInfo.getOpenId());
        Long userId = user.getId();
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
        if(receivingInfo.getOpenId()==null||"".equals(receivingInfo.getOpenId())){
            R.fail("请先登录");
        }
        User user = userService.byAccountGetId(receivingInfo.getOpenId());
        Long userId = user.getId();
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
