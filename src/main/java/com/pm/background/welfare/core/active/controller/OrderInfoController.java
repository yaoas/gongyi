package com.pm.background.welfare.core.active.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pm.background.admin.common.shiro.ShiroUtils;
import com.pm.background.admin.sys.entity.User;
import com.pm.background.admin.sys.service.IUserService;
import com.pm.background.common.base.controller.BaseController;
import com.pm.background.common.utils.R;
import com.pm.background.common.utils.WeixinUtil;
import com.pm.background.welfare.core.active.entity.*;
import com.pm.background.welfare.core.active.service.CommodityService;
import com.pm.background.welfare.core.active.service.OrderInfoService;
import com.pm.background.welfare.core.active.service.ReceivingInfoService;
import com.pm.background.welfare.core.active.service.SignInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.*;


/**
 * 订单信息controller
 */
@RestController
@RequestMapping("/OrderInfo")
public class OrderInfoController extends BaseController {
    @Autowired
    private CommodityService commodityService;
    @Autowired
    private OrderInfoService orderInfoService;
    @Autowired
    private SignInfoService signInfoService;
    @Autowired
    private ReceivingInfoService receivingInfoService;
    @Autowired
    private IUserService userService;

    /**
     * 分页查询列表
     */
    @GetMapping(value = "/page/list")
    public Object pageList(OrderInfo orderInfo) {
        List<Long> roleList = ShiroUtils.getUserEntity().getRoleList();
        String roleId = "";
        String adminRole = "";
        //根据角色判定是否全部显示
        for(Long roleIds : roleList){
            if("3".equals(String.valueOf(roleIds))){
                roleId = String.valueOf(roleIds);
            }if("1".equals(String.valueOf(roleIds))){
                adminRole = String.valueOf(roleIds);
            }
        }
        QueryWrapper qw = new QueryWrapper<OrderInfo>();
        if(orderInfo.getId()!=null){
            qw.eq("id",orderInfo.getId());
        }
        if (orderInfo.getPaymentStatus() != null && !"".equals(orderInfo.getPaymentStatus())) {
            qw.eq("paymentStatus", orderInfo.getPaymentStatus());
        }
        if (orderInfo.getPaymentStatus() == null && "".equals(orderInfo.getPaymentStatus())) {
            qw.eq("paymentStatus", "1");
        }
        if (orderInfo.getProductName() != null && !"".equals(orderInfo.getProductName())) {
            qw.eq("productName", orderInfo.getProductName());
        }
        //是否为自营订单1商家2自营
        if (orderInfo.getIfIsPlatformCommodity() != null && !"".equals(orderInfo.getIfIsPlatformCommodity())) {
            qw.eq("ifIsPlatformCommodity", orderInfo.getIfIsPlatformCommodity());
        }
        //发货状态
        if (orderInfo.getSentGoodsStatus() != null && !"".equals(orderInfo.getSentGoodsStatus())) {
            qw.eq("sentGoodsStatus", orderInfo.getSentGoodsStatus());
        }
        if(!"3".equals(String.valueOf(roleId)) && !"1".equals(String.valueOf(adminRole))){
            qw.eq("productUserId",ShiroUtils.getUserEntity().getId());
        }
        qw.eq("paymentStatus","1");
        qw.orderByDesc("update_time");
        qw.orderByDesc("create_time");
        IPage page = orderInfoService.page(new Page(orderInfo.getCurrentPage(), orderInfo.getPageSize()), qw);
        return R.ok(page);
    }
    /**
 * 发货
 * 发货状态（0未发货1已发货2确认收货）
 */
@RequestMapping(value = "/ifToDeliverGoods")
public Object ifToDeliverGoods(@RequestBody  OrderInfo orderInfo) {
    orderInfo.setSentGoodsStatusName("已发货");
    orderInfo.setSentGoodsStatus("1");
    boolean saveOrUpdate = orderInfoService.saveOrUpdate(orderInfo);
    if(saveOrUpdate){
       return R.ok();
    }else {
        return R.fail();
    }
}
    /**
     * 小程序我的电子券
     * 页码
     */
    @GetMapping(value = "/page/selectMyCouponPage")
    public Object selectMyCouponPage(MyEcoupon myEcoupon) {
        Long userId = ShiroUtils.getUserEntity().getId();
        int startSize = (myEcoupon.getCurrentPage() - 1) * 10;
        int endSize = myEcoupon.getCurrentPage() * 10;
        myEcoupon.setStartSize(startSize);
        myEcoupon.setEndSize(endSize);
        myEcoupon.setUserId(userId);
        List<MyEcoupon> list = orderInfoService.selectMyCoupon(myEcoupon);
        return R.ok(list);
    }

    /**
     * 使用电子券
     */
    public Object useMyCoupon(String id) {
        int i = orderInfoService.useMyCoupon(id);
        if (i > 0) {
            return R.ok("使用成功");
        } else {
            return R.fail("使用失败");
        }
    }


    /**
     * 添加订单信息
     *
     * @param orderInfo(商品productId,商品数量,积分数)
     * @return
     */
    @Transactional
    @RequestMapping("/publishOrderInfo")
    public Object publishOrderInfo(@RequestBody OrderInfo orderInfo) {
        if("48" !=orderInfo.getOrderType()){
            Long userAddress = orderInfo.getReceiveInfoId();
            if(userAddress ==null){
                return R.fail("请添加收货地址！！！");
            }
        }
        Commodity commodity = commodityService.getById(orderInfo.getProductId());
        if(commodity.getNumber() < orderInfo.getProductCount()){
            return R.fail("超过商品库存数！！！");
        }
        orderInfo.setProductName(commodity.getName());
        Float unitPrice = commodity.getUnitPrice();
        //allPrice订单商品总价
        Float allPrice = unitPrice * orderInfo.getProductCount();
        Long userId = ShiroUtils.getUserEntity().getId();
        orderInfo.setOrderType(String.valueOf(commodity.getType()));
        orderInfo.setPaymentStatus("2");
        orderInfo.setPaymentStatusName("未付款");
        boolean publishFlag = true;
        if ("44".equals(commodity.getPayType())) {
            orderInfo.setTotalPrice(String.format("%.2f", allPrice));
            orderInfo.setCreateBy(userId);
            orderInfo.setCostIntegral("0");
            orderInfo.setCostCash(String.valueOf(commodity.getFreight()));
            publishFlag = orderInfoService.saveOrUpdate(orderInfo);
        } else {
            //查积分
            UserIntegral userIntegral = signInfoService.selectIntegralUser(userId);
         /*   if ("1".equals(orderInfo.getPayType())) {
                if (allPrice > userIntegral.getUserIntegral()) {
                    return R.fail("积分不足！！！请查证");
                } else {
                    //添加订单
                    orderInfo.setTotalPrice(String.format("%.2f", allPrice));
                    orderInfo.setCreateBy(userId);
                    orderInfo.setCostIntegral(allPrice);
                    //扣除积分
                    //userIntegral.setUserIntegral(userIntegral.getUserIntegral() - allPrice);
                   //signInfoService.updateUserIntegral(userIntegral);
                    orderInfo.setCostCash(commodity.getFreight());
                    orderInfo.setPaymentStatus("1");
                    publishFlag = orderInfoService.saveOrUpdate(orderInfo);

                }
            }
            if ("2".equals(orderInfo.getPayType())) {
                orderInfo.setTotalPrice(String.format("%.2f", allPrice));
                orderInfo.setCreateBy(userId);
                orderInfo.setCostIntegral(0f);
                orderInfo.setCostCash(allPrice + commodity.getFreight());
                publishFlag = orderInfoService.saveOrUpdate(orderInfo);
            }*/
           /* if ("3".equals(orderInfo.getPayType())) {*/
                if (userIntegral.getUserIntegral() < Float.valueOf(orderInfo.getCostIntegral())) {
                    return R.fail("积分不足！！！请查证");
                } else {
                    if(0 == commodity.getMaxIntegral()){
                        orderInfo.setCostIntegral("0");
                    }
                    if(commodity.getMaxIntegral() < Float.valueOf(orderInfo.getCostIntegral())){
                        return R.fail("超过允许兑换积分上限！！！");
                    }
                    //兑换比例
                    Float deduRatio = Float.valueOf(commodity.getCationRatio()) * Float.valueOf(orderInfo.getCostIntegral());
                    orderInfo.setTotalPrice(String.format("%.2f", allPrice));
                    orderInfo.setCreateBy(userId);
                    float costCash = allPrice - deduRatio;
                    if(costCash < 0){
                        return R.fail("输入的积分过多，超过商品价值！！！");
                    }else {
                        orderInfo.setCostCash(String.valueOf(costCash + commodity.getFreight()));
                    }
                    //扣除积分
                    //userIntegral.setUserIntegral(userIntegral.getUserIntegral() - orderInfo.getCostIntegral());
                    //signInfoService.updateUserIntegral(userIntegral);
                    publishFlag = orderInfoService.saveOrUpdate(orderInfo);

                }
            }
       // }
        if ("48".equals(orderInfo.getOrderType())) {
            MyEcoupon myEcoupon = new MyEcoupon();
            for (int i = 0; i < orderInfo.getProductCount(); i++) {
                myEcoupon.setUserId(userId);
                myEcoupon.setTitle(commodity.getName());
                myEcoupon.setCodeAddress(commodity.getCodeAddress());
                myEcoupon.setUnitPrice(commodity.getUnitPrice());
                myEcoupon.setUseStatus("2");
                myEcoupon.setPayStatus("2");
                orderInfoService.insertMycoupon(myEcoupon);
                orderInfo.setPonId(myEcoupon.getId());
            }
        }
        if (publishFlag) {
            return R.ok(orderInfo);
        } else {
            return R.fail(orderInfo);
        }

    }



    /**
     * 付款成功，更改状态
     * 用来电子券消费接口
     */
    @Transactional
    @RequestMapping(value = "/updatePaymentStatus")
    public Object updatePaymentStatus(Long id) {
        OrderInfo orderInfo = orderInfoService.getById(id);
        orderInfo.setId(orderInfo.getId());
        orderInfo.setPaymentStatusName("已付款");
        orderInfo.setPaymentStatus("1");
        int i = 0;
        if("47".equals(orderInfo.getOrderType())){
             i = orderInfoService.updatePaymentStatus(orderInfo);
            Long userId = ShiroUtils.getUserEntity().getId();
            UserIntegral userIntegral = signInfoService.selectIntegralUser(userId);
            //扣除积分
            userIntegral.setUserIntegral(userIntegral.getUserIntegral() - Float.valueOf(orderInfo.getCostIntegral()));
            signInfoService.updateUserIntegral(userIntegral);

        }else{
            orderInfoService.updateMyPonStatus(orderInfo.getPonId());
        }
        //更改商品数量
        Commodity commodity = commodityService.getById(orderInfo.getProductId());
        commodity.setNumber(commodity.getNumber()-orderInfo.getProductCount());
        commodityService.updateCommudityNumber(commodity);
        if (i > 0) {
            return R.ok("更改成功！");
        } else {
            return R.fail("更改失败！");
        }
    }

    /**
     * 所需费用接口
     * orderInfo(商品id,商品数量,订单类型payType,积分数)
     */
    @Transactional
    @RequestMapping("/responseAllPrice")
    public Object responseAllPrice(@RequestBody OrderInfo orderInfo) {
        Commodity commodity = commodityService.getById(orderInfo.getProductId());
        Float unitPrice = commodity.getUnitPrice();
        Float allPrice = unitPrice * orderInfo.getProductCount();
        Long userId = ShiroUtils.getUserEntity().getId();
        if ("44".equals(commodity.getPayType())) {
            orderInfo.setCostCash(String.valueOf(commodity.getFreight()));
        } else {
            //查积分
            if ("1".equals(orderInfo.getPayType())) {
                UserIntegral userIntegral = signInfoService.selectIntegralUser(userId);
                if (allPrice > userIntegral.getUserIntegral()) {
                    return R.ok("积分不足！！！请查证");
                } else {
                    orderInfo.setCostCash(String.valueOf(commodity.getFreight()));
                }
            }
            if ("2".equals(orderInfo.getPayType())) {
                orderInfo.setCostCash(String.valueOf(allPrice + commodity.getFreight()));
            }
            if ("3".equals(orderInfo.getPayType())) {
                UserIntegral userIntegral = signInfoService.selectIntegralUser(userId);
                if (userIntegral.getUserIntegral() < Float.valueOf(orderInfo.getCostIntegral())) {
                    return R.ok("积分不足！！！请查证");
                } else {
                    orderInfo.setCostCash(String.valueOf(allPrice - Float.valueOf(orderInfo.getCostIntegral()) + commodity.getFreight()));
                }
            }
        }
        return R.ok(orderInfo.getCostCash());
    }

    /**
     * 批量删除订单
     */
    @RequestMapping("/delete")
    public Object delete(@RequestBody Long[] id) {
        boolean deleteFlag = orderInfoService.removeByIds(Arrays.asList(id));
        if (deleteFlag) {
            return R.ok("删除成功！");
        } else {
            return R.fail("删除失败！");
        }
    }

    /**
     * 查看订单接口
     */
    @RequestMapping(value = "/checkOrder")
    public Object checkOrder(String id) {
        OrderInfo orderInfo = orderInfoService.getById(id);
       if(orderInfo.getReceiveInfoId()!=null && !"".equals(orderInfo.getReceiveInfoId())){
           ReceivingInfo receivingInfo =  receivingInfoService.getById(orderInfo.getReceiveInfoId());
           if(receivingInfo!=null){
               orderInfo.setOrderUserName(receivingInfo.getName());
               orderInfo.setOrderUserAddress(receivingInfo.getAddress());
               orderInfo.setOrderUserPhoneNum(receivingInfo.getPhoneNum());
           }

       }
        return R.ok(orderInfo);
    }
//兑换比例列表
 /*   @GetMapping(value = "/page/duList")
    public Object duList(DudecationRatio dudecationRatio) {
        long capge = dudecationRatio.getCurrentPage();
        long startPage = (capge-1)*dudecationRatio.getPageSize();
        long endPage = capge*dudecationRatio.getPageSize();
        dudecationRatio.setStartPage(startPage);
        dudecationRatio.setEndPage(endPage);
        List<DudecationRatio> list = orderInfoService.selectRatioPage(dudecationRatio);
        return R.ok(list);
    }*/

    @RequestMapping("/deleteRatio")
    public  Object deleteRatio(Long id){
        int i =orderInfoService.deleteRatio(id);
        if (i > 0) {
            return R.ok("删除成功！");
        } else {
            return R.fail("删除失败！");
        }
    }

    /**\
     * 微信付款接口暂用
     */
    @RequestMapping("/weixinStatus")
    public Object weixinStatus(String money){
        return R.ok(money);
    }

    @RequestMapping("/wwwww")
    public  Object wwwww(HttpServletRequest request,OrderInfo orderInfo){
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        String backUrl = "192.168.0.180:8082/OrderInfo/updatePaymentStatus?id="+orderInfo.getId();
        SortedMap<Object, Object> parameters = new TreeMap<Object, Object>();
        parameters.put("appid", WeixinUtil.APPID);
        parameters.put("mch_id", WeixinUtil.MCH_ID);
        parameters.put("nonce_str", WeixinUtil.create_nonce_str());
        System.out.println(WeixinUtil.create_nonce_str());
        parameters.put("body", "微信支付成功");
        parameters.put("out_trade_no", WeixinUtil.getRandomString(32));// 订单号
        parameters.put("total_fee", Float.valueOf(orderInfo.getCostCash())*100);// 支付金额单位：分
        parameters.put("spbill_create_ip", WeixinUtil.getIp2(request));
        parameters.put("notify_url",backUrl);
        parameters.put("trade_type",WeixinUtil.TRADE_TYPE);
        //parameters.put("openid", orderInfo.getOpenid());//openid :需填写
        parameters.put("time_expire", sdf.format(date));// 交易结束时间,需要动态传入,格式为yyyyMMddHHmmss
        String sign = WeixinUtil.createSign("UTF-8", parameters);
        parameters.put("sign", sign);
        String requestXML = WeixinUtil.getRequestXml(parameters);
        String result = WeixinUtil.httpsRequest("https://api.mch.weixin.qq.com/pay/unifiedorder","POST",requestXML);
        Map map = WeixinUtil.doXMLParse(result);
        return  R.ok(map);
    }
    /**
     * 审核退款接口
     */
    @RequestMapping("/applyReturnMoney")
    public Object applyReturnMoney(@RequestBody OrderInfo orderInfo) {
        boolean ifTrue = orderInfoService.saveOrUpdate(orderInfo);
        if (ifTrue) {
            return R.ok("申请成功！");
        } else {
            return R.fail("申请失败！");
        }
    }

    /**
     * 分页查询交易比
     * 参数页码
     */
    @RequestMapping("/statisticsPricePage")
    public Object statisticsPricePage(@RequestBody OrderInfo orderInfo) {
        if(orderInfo.getProductUserName()!=null && !"".equals(orderInfo.getProductUserName())){
            User user = userService.byAccountGetId(orderInfo.getProductUserName());
            if(user!=null){
                orderInfo.setProductUserId(String.valueOf(user.getId()));
            }else {
                return R.fail("该账户不存在");
            }
        }
        List<Long> roleList = ShiroUtils.getUserEntity().getRoleList();
        String roleId = "";
        String adminRole = "";
        //根据角色判定是否全部显示
        for(Long roleIds : roleList){
            if("3".equals(String.valueOf(roleIds))){
                roleId = String.valueOf(roleIds);
            }if("1".equals(String.valueOf(roleIds))){
                adminRole = String.valueOf(roleIds);
            }
        }
        if(!"3".equals(String.valueOf(roleId)) && !"1".equals(String.valueOf(adminRole))){
            orderInfo.setProductUserId(String.valueOf(ShiroUtils.getUserEntity().getId()));
        }
        long currentPage = orderInfo.getCurrentPage();
        orderInfo.setStartSize((int)(currentPage-1)*10);
        orderInfo.setEndSize((int)currentPage*10);
        Map map  = orderInfoService.statisticsPricePage(orderInfo);
       return R.ok(map);

    }

}
