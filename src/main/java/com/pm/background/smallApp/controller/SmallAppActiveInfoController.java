package com.pm.background.smallApp.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pm.background.admin.sys.entity.User;
import com.pm.background.admin.sys.service.IDictService;
import com.pm.background.admin.sys.service.IUserService;
import com.pm.background.common.base.controller.BaseController;
import com.pm.background.common.utils.R;
import com.pm.background.welfare.core.active.entity.*;
import com.pm.background.welfare.core.active.service.CommodityService;
import com.pm.background.welfare.core.active.service.CommoditySpecificationService;
import com.pm.background.welfare.core.active.service.IActiveInfoService;
import com.pm.background.welfare.core.active.service.SignInfoService;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

/**
 * 活动controller
 */
@RestController
@RequestMapping("/smallApp/active")
public class SmallAppActiveInfoController extends BaseController {

    @Autowired
    private IActiveInfoService activeInfoService;
    @Autowired
    private IDictService idictService;
    @Autowired
    private IUserService userService;
    @Autowired
    private CommodityService commodityService;
    @Autowired
    private SignInfoService signInfoService;
    @Autowired
    private CommoditySpecificationService commoditySpecificationService;

    /**
     * 活动列表和分页查询
     * 需要页码，页容量
     *
     * @param activeInfo 审批状态status2
     * @return status1, topStatus, activePosition, remark（代表条数）
     */
    @GetMapping(value = "/page/list")
    public Object pageList(ActiveInfo activeInfo) {
        QueryWrapper qw = new QueryWrapper<ActiveInfo>();
        if (StringUtils.isNotEmpty(activeInfo.getTopStatus())) {
            qw.eq("topStatus", activeInfo.getTopStatus());
        }
        if (StringUtils.isNotEmpty(activeInfo.getTitle())) {
            qw.like("title", activeInfo.getTitle());
        }
        if (activeInfo.getType() != null) {
            qw.eq("type", activeInfo.getType());
        }
        if (StringUtils.isNotEmpty(activeInfo.getStatus())) {
            qw.eq("status", activeInfo.getStatus());
        }
        qw.orderByDesc("update_time");
        qw.orderByDesc("create_time");
        IPage page = activeInfoService.page(new Page(activeInfo.getCurrentPage(), activeInfo.getPageSize()), qw);
        return R.ok(page);
    }

    @GetMapping(value = "/page/listAll")
    public Object pageListAll(ActiveInfo activeInfo) {
        QueryWrapper qw = new QueryWrapper<ActiveInfo>();
        if(activeInfo.getOpenId()!=null && !"".equals(activeInfo.getOpenId())){
            User users = userService.byAccountGetId(activeInfo.getOpenId());
            qw.eq("create_by", users.getId());
        }
        if (StringUtils.isNotEmpty(activeInfo.getTopStatus())) {
            qw.eq("topStatus", activeInfo.getTopStatus());
        }
        if (StringUtils.isNotEmpty(activeInfo.getTitle())) {
            qw.like("title", activeInfo.getTitle());
        }
        if (activeInfo.getType() != null) {
            qw.eq("type", activeInfo.getType());
        }
        if (StringUtils.isNotEmpty(activeInfo.getStatus())) {
            qw.eq("status", activeInfo.getStatus());
        }
        qw.orderByDesc("update_time");
        qw.orderByDesc("create_time");

        IPage page = activeInfoService.page(new Page(activeInfo.getCurrentPage(), activeInfo.getPageSize()), qw);
        return R.ok(page);
    }

   /* *//**
     * 获取购买商品信息
     *
     * 参数活动ID
     *//*
    @RequestMapping(value = "/purchaseGoods")
    public Object purchaseGoods(Long id) {
        Long commodityId = activeInfoService.selectBindingAllId(id);
        Commodity commodity = commodityService.getById(commodityId);
        if(commodity.getCommoditySpecifications()!=null){
            String [] st=commodity.getCommoditySpecifications().split(",");
            List listmap = new ArrayList();
            for(int i =0;i<st.length ;i++){
                Map<String,String> map =new HashMap<>();
                CommoditySpecifications commoditySpecifications = commoditySpecificationService.getById(st[i]);
                map.put("name",st[i]);
                map.put("value",commoditySpecifications.getSpecificationsName());
                listmap.add(map);
            }
            commodity.setListMap(listmap);
        }
        return R.ok(commodity);
    }*/

    /**
     * 默认进来不分页的list
     *
     * @param activeInfo
     * @return
     */
    @ApiOperation("列表")
    @GetMapping(value = "/list")
    public R list(ActiveInfo activeInfo) {
        QueryWrapper qw = new QueryWrapper<ActiveInfo>();
        if (StringUtils.isNotEmpty(activeInfo.getTopStatus())) {
            qw.eq("topStatus", activeInfo.getTopStatus());
        }
        if (activeInfo.getType() != null) {
            qw.eq("type", activeInfo.getType());
        }
        qw.orderByDesc("update_time");
        qw.orderByDesc("create_time");
        String limit = "limit " + activeInfo.getLimit();
        qw.last(limit);
        if (StringUtils.isNotEmpty(activeInfo.getStatus())) {
            qw.eq("status", activeInfo.getStatus());
        }
        List<ActiveInfo> activeInfoList = activeInfoService.list(qw);
        return R.ok(activeInfoList);
    }

    /**
     * 小程序搜索查詢接口
     */
    @GetMapping("/querySelectList")
    public  Object querySelectList(ActiveInfo activeInfo){
        QueryWrapper qw = new QueryWrapper<ActiveInfo>();
        qw.orderByDesc("update_time");
        qw.orderByDesc("create_time");
        qw.like("title",activeInfo.getTitle());
        if (activeInfo.getType() != null) {
            qw.eq("type", activeInfo.getType());
        }
        List<ActiveInfo> activeInfoList = activeInfoService.list(qw);
        //惠民list 41
        List<ActiveInfo>  benefitList = new ArrayList<>();
        //幫扶list 42
        List<ActiveInfo>  helpList = new ArrayList<>();
        //公益list 40
        List<ActiveInfo>  welfareList = new ArrayList<>();
        if(activeInfoList.size()>0){
            for(ActiveInfo active:activeInfoList){
                if(40 == active.getType()){
                    welfareList.add(active);
                }if(41 ==active.getType() ){
                    benefitList.add(active);
                }if(42 == active.getType()){
                    helpList.add(active);
                }
            }
        }
        Map<String,List<ActiveInfo>>  map = new HashMap<>();
        map.put("40",welfareList);
        map.put("41",benefitList);
        map.put("42",helpList);
        return R.ok(map);
    }

    /**
     * 活动发布
     *
     * @param activeInfo(title,content,type) 有图片地址就给地址，没有不用给
     *                                       status  1不需要审批 2 需要管理员审批
     *                                       活动置顶状态
     * @return
     */
    @Transactional
    @RequestMapping("/publish")
    public Object publish(HttpServletRequest request,@RequestBody ActiveInfo activeInfo) {
        if(activeInfo.getOpenId()==null||"".equals(activeInfo.getOpenId())){
            return R.fail("未登录！！！");
        }
        if(activeInfo.getTitle()==null||"".equals(activeInfo.getTitle())){
            return R.fail("标题不能为空");
        }
        if(activeInfo.getType()==null||"".equals(activeInfo.getType())){
            return R.fail("活动类型不能为空");
        }
        if("40".equals(activeInfo.getType())){
            int startInt = activeInfo.getStartTime().compareTo(new Date());
            if(startInt < 0){
                return R.fail("请选择大于当前时间！！！");
            }
        }

        User users = userService.byAccountGetId(activeInfo.getOpenId());
        Long userId = users.getId();
        if (userId != null) {
            activeInfo.setCreateBy(userId);
            User user = userService.getById(userId);
            activeInfo.setCreateByName(user.getName());
            String realName =user.getRealNameCertification();
            if(!"1".equals(realName)){
                return R.fail("未实名认证！！！");
            }
        }
        if (activeInfo.getType() == 42) {
            activeInfo.setStatus("2");
            activeInfo.setStatusName("未审核");
        }
        if (activeInfo.getType() != 42) {
            activeInfo.setStatus("1");
        }
        activeInfo.setTopStatus("55");
        activeInfo.setTopStatusName("未置顶");
        String activeTypeName = idictService.byIdGetName(activeInfo.getType());
        activeInfo.setTypeName(activeTypeName);
        boolean publishFlag = activeInfoService.saveOrUpdate(activeInfo);
        if(40==activeInfo.getType()){
            //签到插入
            SignInfo signInfo = new SignInfo();
            signInfo.setUserId(userId);
            User user = userService.getById(signInfo.getUserId());
            User userCreate = userService.getById(activeInfo.getCreateBy());
            signInfo.setActiveId(activeInfo.getId());
            signInfo.setActiveName(activeInfo.getTitle());
            signInfo.setUserName(user.getName());
            signInfo.setAvatar(user.getAvatar());
            signInfo.setActiveCreateUserId(activeInfo.getCreateBy());
            signInfo.setActiveCreateUserName(userCreate.getName());
            //审批通过
            signInfo.setApprovalStatus("1");
            signInfo.setApprovalStatusName("审批通过");
            //0表示未开始打卡
            signInfo.setClockStatus("0");
            signInfo.setSignUpStatus("2");
            signInfoService.signUpActiveInfo(signInfo);

        }
        if (publishFlag) {
            return R.ok("活动发布成功！");
        } else {
            return R.fail("活动发布失败！");
        }
    }

    /**
     * 修改活动
     *
     * @param activeInfo
     * @return
     */
    @Transactional
    @RequestMapping("/updateActiveInfo")
    public Object updateActiveInfo(HttpServletRequest request, @RequestBody ActiveInfo activeInfo) {
        if(activeInfo.getOpenId()==null||"".equals(activeInfo.getOpenId())){
            R.fail("请先登录");
        }
        if(activeInfo.getTitle()==null||"".equals(activeInfo.getTitle())){
            return R.fail("标题不能为空");
        }
        if(activeInfo.getType()==null||"".equals(activeInfo.getType())){
            return R.fail("活动类型不能为空");
        }
        User user = userService.byAccountGetId(activeInfo.getOpenId());
        Long userId = user.getId();
        if (userId != null) {
            activeInfo.setUpdateBy(userId);
        }
        //查询一下活动类型名称
        String activeTypeName = idictService.byIdGetName(activeInfo.getType());
        activeInfo.setTypeName(activeTypeName);
        boolean updateActiveInfoFlag = activeInfoService.updateById(activeInfo);
        if (updateActiveInfoFlag) {
            return R.ok("活动修改成功！");
        } else {
            return R.fail("活动修改失败！");
        }
    }


    /**
     * 活动删除以及删除绑定的关联表信息
     */
    @Transactional
    @RequestMapping("/delete")
    public Object delete(String id) {
        long ids = Long.valueOf(id);
        boolean deleteFlag = activeInfoService.deleteActiveInfo(ids);
        BindingCommodity bindingCommodity = new BindingCommodity();
        bindingCommodity.setActiveId(ids);
        Long commodityId = activeInfoService.selectBindingAllId(bindingCommodity.getActiveId());
        if(commodityId!=null&&!"".equals(commodityId)){
            //删除活动关联表
            activeInfoService.deleteBindingCommodity(bindingCommodity);
            Commodity commodity = new Commodity();
            commodity.setBindingStatus("2");
            commodity.setId(commodityId);
            activeInfoService.updateBinComStatus(commodity);
        }
        if (deleteFlag) {
            return R.ok("活动删除成功！");
        } else {
            return R.fail("活动删除失败！");
        }
    }

    @RequestMapping("/deletess")
    public void deletess(String id) {
        long ids = Long.valueOf(id);
        //删除活动关联表
        BindingCommodity bindingCommodity = new BindingCommodity();
        bindingCommodity.setActiveId(ids);
        activeInfoService.deleteBindingCommodity(bindingCommodity);
    }


    /**
     * 查看活动
     * param id
     */
    @Transactional
    @RequestMapping("/viewActiveInfo")
    public Object viewActiveInfo(HttpServletRequest request,String id,String openId) {

        long ids = Long.valueOf(id);
        ActiveInfo activeInfo = activeInfoService.getActiveInfo(ids);
        if(openId!=null && !"".equals(openId)){
            User user = userService.byAccountGetId(openId);
            Long userId = user.getId();
            QueryWrapper qw = new QueryWrapper<SignInfo>();
            qw.eq("active_id", ids);
            qw.eq("user_id", userId);
            List<SignInfo> list = signInfoService.list(qw);
            if(activeInfo!=null){
                if (list.size() == 0) {
                    activeInfo.setSignUpStatus("0");
                } else {
                    for (SignInfo signInfo : list) {
                        activeInfo.setSignUpStatus(signInfo.getSignUpStatus());
                        activeInfo.setSignId(signInfo.getId());
                        activeInfo.setClockStatus(signInfo.getClockStatus());
                    }
                }
                if(activeInfo.getEndTime()!=null && !"".equals(activeInfo.getEndTime())){
                    int endInt = activeInfo.getEndTime().compareTo(new Date());
                    if(endInt < 0){
                        activeInfo.setIfEndActive("1");
                    }
                }
            }
            ActiveInfo activeInfo1 = new ActiveInfo();
            activeInfo1.setCreateBy(userId);
            activeInfo1.setId(Long.valueOf(id));
            int count =activeInfoService.selectActiveFabulousServer(activeInfo1);
            if(count > 0){
                //2表示当前人点过赞
                activeInfo.setIfActiveFabulous("2");
            }else {
                //1表示当前人未点过赞
                activeInfo.setIfActiveFabulous("1");
            }

        }

        return R.ok(activeInfo);
    }

    /**
     * 小程序端查看活动加聊天记录
     * param id
     */
    @Transactional
    @RequestMapping("/viewActiveInfoAndChat")
    public Object viewActiveInfoAndChat(@RequestBody CommunityChat communityChat) {
        ActiveInfo activeInfo = activeInfoService.getActiveInfo(communityChat.getId());
        communityChat.setStartPage((communityChat.getCurrentPage()-1l)*8);
        communityChat.setEndPage(8);
        List<ActiveChat> listChat = activeInfoService.selectActiveChat(communityChat);
        ActiveChatList ac = new ActiveChatList();
        ac.setActiveInfo(activeInfo);
        ac.setList(listChat);
        return R.ok(ac);
    }

    /**
     * 发布活动留言
     * param (activeId,content)
     */
    @RequestMapping("/insertActiveChat")
    public Object insertActiveChat(HttpServletRequest request,@RequestBody ActiveChat activeChat) {
        if(activeChat.getOpenId()==null||"".equals(activeChat.getOpenId())){
            R.fail("请先登录");
        }
        User user = userService.byAccountGetId(activeChat.getOpenId());
        String realName =user.getRealNameCertification();
        if(!"1".equals(realName)){
            return R.fail("未实名认证！！！");
        }
        activeChat.setCreateTime(new Date());
        activeChat.setUserName(user.getName());
        activeChat.setImagePictrue(user.getAvatar());
        int i = activeInfoService.insertActiveChat(activeChat);
        if (i > 0) {
            return R.ok("留言成功！");
        } else {
            return R.ok("留言失败！");
        }
    }

    /**
     * 2显示1不显示
     * @return
     */
    @RequestMapping("/ifAgress")
    public  Object ifAgress(){
        return R.ok("1");
    }
    //点赞
    @RequestMapping("/insertActiveFabulous")
    public synchronized  Object insertActiveFabulous(String id,String openId){
        User user = userService.byAccountGetId(openId);
        ActiveInfo activeInfo  = activeInfoService.getById(id);
        if(activeInfo !=null){
            activeInfo.setCreateBy(user.getId());
        }
        int i =activeInfoService.insertActiveFabulousSever(activeInfo);
        if(i > 0){
            return R.ok("点赞成功");
        }else {
            return R.fail("点赞失败");
        }
    }
    //取消点赞
    @RequestMapping("/deleteActiveFabulous")
    public synchronized  Object deleteActiveFabulous(String id,String openId){
        User user = userService.byAccountGetId(openId);
        ActiveInfo activeInfo  = activeInfoService.getById(id);
        if(activeInfo !=null){
            activeInfo.setCreateBy(user.getId());
        }
        int i =activeInfoService.deleteActiveFabulousSever(activeInfo);
        if(i > 0){
            return R.ok("取消成功");
        }else {
            return R.fail("取消失败");
        }
    }
}
