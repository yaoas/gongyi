package com.pm.background.smallApp.controller;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.pm.background.admin.sys.entity.User;
import com.pm.background.admin.sys.service.IUserService;
import com.pm.background.common.base.controller.BaseController;
import com.pm.background.common.utils.R;
import com.pm.background.common.utils.WeixinUtil;
import com.pm.background.welfare.core.active.controller.HttpUtil;
import com.pm.background.welfare.core.active.entity.*;
import com.pm.background.welfare.core.active.service.*;
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
@RequestMapping("/smallApp/OrderInfo")
public class SmallAppOrderInfoController extends BaseController {
    @Autowired
    private CommodityService commodityService;
    @Autowired
    private OrderInfoService orderInfoService;
    @Autowired
    private SignInfoService signInfoService;
    @Autowired
    private IUserService userService;
    @Autowired
    private  ButtShopService buttShopService;
    @Autowired
    private ReceivingInfoService receivingInfoService;
    @Autowired
    private FileOutService fileOutService;
    @Autowired
    private PlatformCommodityService platformCommodityService;
    @Autowired
    private CommoditySpecificationService commoditySpecificationService;

    /**
     * 分页查询列表
     */
    @GetMapping(value = "/page/list")
    public Object pageList(OrderInfo orderInfo) {
        orderInfo.setPaymentStatus("1");
        if(orderInfo.getOpenId()==null||"".equals(orderInfo.getOpenId())){
            R.ok();
        }
        QueryWrapper qw = new QueryWrapper<ReceivingInfo>();
        if (orderInfo.getOrderType() != null && !"".equals(orderInfo.getOrderType())) {
            qw.eq("orderType", orderInfo.getOrderType());
        }
        if (orderInfo.getPaymentStatus() != null && !"".equals(orderInfo.getPaymentStatus())) {
            qw.eq("paymentStatus", orderInfo.getPaymentStatus());
        }
        if (orderInfo.getSentGoodsStatus() != null && !"".equals(orderInfo.getSentGoodsStatus())) {
            qw.eq("sentGoodsStatus", orderInfo.getSentGoodsStatus());
        }
        if (orderInfo.getPaymentStatus() != null && !"".equals(orderInfo.getPaymentStatus())) {
            qw.eq("paymentStatus", orderInfo.getPaymentStatus());
        }
        if (orderInfo.getReturnMoneyStatus() != null && !"".equals(orderInfo.getReturnMoneyStatus())) {
            qw.eq("returnMoneyStatus", orderInfo.getReturnMoneyStatus());
        }
        if (orderInfo.getIfIsPlatformCommodity() != null && !"".equals(orderInfo.getIfIsPlatformCommodity())) {
            qw.eq("ifIsPlatformCommodity", orderInfo.getIfIsPlatformCommodity());
        }
        User user = userService.byAccountGetId(orderInfo.getOpenId());
        qw.eq("create_by", user.getId());
        qw.orderByDesc("update_time");
        qw.orderByDesc("create_time");
        List list = orderInfoService.list(qw);
        return R.ok(list);
    }

    /**
     * 收货
     * 发货状态（0未发货1已发货2确认收货）
     */
    @RequestMapping(value = "/ifToTrueGoods")
    public Object ifToDeliverGoods(OrderInfo orderInfo) {
        orderInfo.setSentGoodsStatusName("已收货");
        orderInfo.setSentGoodsStatus("2");
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
    public Object selectMyCouponPage(HttpServletRequest request,MyEcoupon myEcoupon) {
        if(myEcoupon.getOpenId()==null||"".equals(myEcoupon.getOpenId())){
            R.ok();
        }
        User user = userService.byAccountGetId(myEcoupon.getOpenId());
        Long userId = user.getId();
        int startSize = (myEcoupon.getCurrentPage() - 1) * 10;
        int endSize = 10;
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
    public Object publishOrderInfo(HttpServletRequest request,@RequestBody OrderInfo orderInfo) {
        if(orderInfo.getOpenId()==null||"".equals(orderInfo.getOpenId())){
            R.ok();
        }
            Long userAddress = orderInfo.getReceiveInfoId();
            if(userAddress ==null){
                return R.fail("请添加收货地址！！！");
            }
        boolean publishFlag = true;
        if("2".equals(orderInfo.getIfIsPlatformCommodity())){
            PlatformCommodity platformCommodity = platformCommodityService.getById(orderInfo.getProductId());
            CommoditySpecification commoditySpecification = commoditySpecificationService.getById(orderInfo.getCommodityGuiId());
            if(commoditySpecification==null){
                return R.fail("规格不存在");
            }
            orderInfo.setProductName(platformCommodity.getTitle());
            //成本单价
            Float unitPrice = Float.valueOf(commoditySpecification.getUnitPrice());
            //购买价
            Float purchasePrice = Float.valueOf(commoditySpecification.getMinPrice());
                    //unitPrice + unitPrice* Float.valueOf(commoditySpecification.getPremium())/100f;
            //allPrice订单商品总价(元)
            float allPrice = purchasePrice * orderInfo.getProductCount();
            //成本订单总价
            float preperPriceAll = unitPrice * orderInfo.getProductCount();

            User user = userService.byAccountGetId(orderInfo.getOpenId());
            Long userId = user.getId();
            //商品类型暂时都是实物  47实物48电子券
            orderInfo.setPaymentStatus("2");
            orderInfo.setPaymentStatusName("未付款");
            //查积分
            UserIntegral userIntegral = signInfoService.selectIntegralUser(userId);
            //积分数
            Float integralSum = Float.valueOf(commoditySpecification.getIntegral()) * orderInfo.getProductCount();
            if (userIntegral.getUserIntegral() < integralSum ) {
                return R.fail("积分不足！！！");
            } else {
                orderInfo.setTotalPrice(String.format("%.2f", allPrice));
                orderInfo.setCreateBy(userId);
                orderInfo.setPayType("45");
                orderInfo.setCostCash(String.format("%.2f", allPrice));
                orderInfo.setCostIntegral(String.valueOf(integralSum));
                orderInfo.setOutTradeNo(WeixinUtil.getRandomString(32));
                orderInfo.setUnitPrice(String.format("%.2f", purchasePrice));
                orderInfo.setIfIsPlatformCommodity("2");
                orderInfo.setOrderProductPicture(platformCommodity.getImgCover());
                orderInfo.setProductUserId(String.valueOf(platformCommodity.getCreateBy()));
                orderInfo.setPreperPriceAll(String.format("%.2f", preperPriceAll));
                orderInfo.setSentGoodsStatus("0");
                orderInfo.setSentGoodsStatusName("未发货");
                orderInfo.setProductUserName(platformCommodity.getCreateByName());
                orderInfo.setSpecificationsName(commoditySpecification.getSpecification());
                publishFlag = orderInfoService.saveOrUpdate(orderInfo);
            }
        }else {
            ButtShop buttShop = buttShopService.getById(orderInfo.getProductId());

            orderInfo.setProductName(buttShop.getTitle());
            //单价
            Float unitPrice = Float.valueOf(buttShop.getOriginalPrice());
            //购买价
            Float purchasePrice = unitPrice + unitPrice* Float.valueOf(buttShop.getPremium())/100f;
            //allPrice订单商品总价(元)
            float allPrice = purchasePrice * orderInfo.getProductCount();
            User user = userService.byAccountGetId(orderInfo.getOpenId());
            Long userId = user.getId();
            //商品类型暂时都是实物  47实物48电子券
            orderInfo.setPaymentStatus("2");
            orderInfo.setPaymentStatusName("未付款");
            //查积分
            UserIntegral userIntegral = signInfoService.selectIntegralUser(userId);
            //积分数
            Float integralSum = Float.valueOf(buttShop.getIntegral()) * orderInfo.getProductCount();
            if (userIntegral.getUserIntegral() < integralSum ) {
                return R.fail("积分不足！！！");
            } else {

                orderInfo.setTotalPrice(String.format("%.2f", allPrice));
                orderInfo.setCreateBy(userId);
                orderInfo.setPayType("45");
                orderInfo.setCostCash(String.format("%.2f", allPrice));
                orderInfo.setCostIntegral(String.valueOf(integralSum));
                orderInfo.setOutTradeNo(WeixinUtil.getRandomString(32));
                orderInfo.setUnitPrice(String.format("%.2f", purchasePrice));
                orderInfo.setSentGoodsStatus("0");
                orderInfo.setIfIsPlatformCommodity("1 ");
                orderInfo.setSentGoodsStatus("0");
                orderInfo.setSentGoodsStatusName("未发货");
                publishFlag = orderInfoService.saveOrUpdate(orderInfo);
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
    public Object updatePaymentStatus(Long id,String openId) {
        OrderInfo orderInfo = orderInfoService.getById(id);
        orderInfo.setId(orderInfo.getId());
        orderInfo.setPaymentStatusName("已付款");
        orderInfo.setPaymentStatus("1");
        int i = 0;
          i = orderInfoService.updatePaymentStatus(orderInfo);
            User user = userService.byAccountGetId(openId);
            Long userId = user.getId();
            UserIntegral userIntegral = signInfoService.selectIntegralUser(userId);
            //扣除积分
            userIntegral.setUserIntegral(userIntegral.getUserIntegral() - Float.valueOf(orderInfo.getCostIntegral()));
            signInfoService.updateUserIntegral(userIntegral);
           /* if("48".equals(orderInfo.getOrderType())){
                i=orderInfoService.updateMyPonStatus(orderInfo.getId());
            }*/
           if(!"2".equals(orderInfo.getIfIsPlatformCommodity())){
               //同步订单信息
               JSONObject objOne = new JSONObject();
               JSONObject objTwo = new JSONObject();
               //订单号
               objTwo.put("order_sn",orderInfo.getId());
               objTwo.put("userMoney",orderInfo.getCostCash());
               objTwo.put("unitPrice",orderInfo.getUnitPrice());
               //产品号
               objTwo.put("goods_id",orderInfo.getProductId());
               //购买数量
               objTwo.put("quantity",orderInfo.getProductCount());
               //付款状态 都是付款成功的
               objTwo.put("order_type",3);
               //购买人id
               objTwo.put("uid",orderInfo.getCreateBy());
               JSONObject objThree = new JSONObject();
               ReceivingInfo receivingInfo = receivingInfoService.getById(orderInfo.getReceiveInfoId());
               objThree.put("username",receivingInfo.getName());
               objThree.put("phone",receivingInfo.getPhoneNum());
               objThree.put("address",receivingInfo.getAddress());
               objOne.put("data", objTwo);
               objTwo.put("address", objThree);
               objOne.put("data",objTwo);
               String url = "http://api.kemengjizhang.com/v3.0/komoi/order/sync_order";
               String resultJie = HttpUtil.sendPost(objOne,url);
               org.json.JSONObject getjson = new org.json.JSONObject(resultJie);
               String ifSuccess = getjson.get("code").toString();
               String ifMsg = getjson.get("msg").toString();
               if(i > 0 ){
                   if("0".equals(ifSuccess)){
                       return R.ok("同步成功！");
                   }else {
                       FileOut fileOut = new FileOut();
                       fileOut.setContent(ifSuccess+":"+ifMsg);
                       fileOut.setOrderId(String.valueOf(id));
                       fileOut.setUserId(String.valueOf(orderInfo.getCreateBy()));
                       fileOutService.save(fileOut);
                       return R.fail("同步失败！");
                   }
               }
           }
        if(i > 0 ){
            return R.ok();
        }else {
            return R.fail("更改订单状态失败");
        }
        //更改商品数量
       /* Commodity commodity = commodityService.getById(orderInfo.getProductId());
        commodity.setNumber(commodity.getNumber()-orderInfo.getProductCount());
        i=commodityService.updateCommudityNumber(commodity);*/
    }
/**
 * 测试订单失败情况
 */
@RequestMapping("/failOutToButtShop")
public Object responseAllPrice(HttpServletRequest request,@RequestBody FileOut fileOut) {
    boolean save = fileOutService.save(fileOut);
    if(save){
        return R.ok();
    }else {
        return R.fail();
    }
}
    /**
     * 所需费用接口
     * orderInfo(商品id,商品数量,订单类型payType,积分数)
     */
    @Transactional
    @RequestMapping("/responseAllPrice")
    public Object responseAllPrice(HttpServletRequest request,@RequestBody OrderInfo orderInfo) {
        if(orderInfo.getOpenId()==null||"".equals(orderInfo.getOpenId())){
            R.ok();
        }
        Commodity commodity = commodityService.getById(orderInfo.getProductId());
        Float unitPrice = commodity.getUnitPrice();
        Float allPrice = unitPrice * orderInfo.getProductCount();
        User user = userService.byAccountGetId(orderInfo.getOpenId());
        Long userId = user.getId();
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
        return R.ok(orderInfo);
    }
//兑换比例列表
/*    @GetMapping(value = "/page/duList")
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

    @RequestMapping("/weiXinPay")
    public  Object weiXinPay(HttpServletRequest request,OrderInfo orderInfo){
        OrderInfo orderInfos = orderInfoService.getById(orderInfo.getId());
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
       // String backUrl = "192.168.0.180:8082/OrderInfo/updatePaymentStatus?id="+orderInfo.getId();
        //String backUrl = "124.239.150.18:8081/erp/OrderInfo/updatePaymentStatus?id="+orderInfo.getId();
        SortedMap<Object, Object> parameters = new TreeMap<Object, Object>();
        parameters.put("appid", WeixinUtil.APPID);
        parameters.put("mch_id", WeixinUtil.MCH_ID);
        parameters.put("nonce_str", WeixinUtil.create_nonce_str());
        //System.out.println(WeixinUtil.create_nonce_str());
        parameters.put("body", "公益小程序-购买成功");
        //parameters.put("out_trade_no", WeixinUtil.getRandomString(32));// 订单号
        parameters.put("out_trade_no", orderInfos.getOutTradeNo());// 订单号
        float costCash = Float.valueOf(orderInfo.getCostCash())*100;
        parameters.put("total_fee", (int)costCash);// 支付金额单位：分
       // WeixinUtil.getIp2(request)
        parameters.put("spbill_create_ip",WeixinUtil.CREATE_IP);
        parameters.put("notify_url","www.baidu.com");
        parameters.put("trade_type",WeixinUtil.TRADE_TYPE);
        parameters.put("openid", orderInfo.getOpenId());//openid :需填写
        String sign = WeixinUtil.createSign("UTF-8", parameters);
        parameters.put("sign", sign);
        String requestXML = WeixinUtil.getRequestXml(parameters);
        String result = WeixinUtil.httpsRequest("https://api.mch.weixin.qq.com/pay/unifiedorder","POST",requestXML);
        Map map = WeixinUtil.doXMLParse(result);
        Long dateTime=new Date().getTime();
        SortedMap<Object, Object> parameterTwo = new TreeMap<Object, Object>();
        String ss=String.valueOf(map.get("prepay_id"));
       String packages = "prepay_id="+ss;
        parameterTwo.put("appId",WeixinUtil.APPID);
        parameterTwo.put("nonceStr",map.get("nonce_str"));
        parameterTwo.put("package",packages);
        parameterTwo.put("signType","MD5");
        parameterTwo.put("timeStamp",dateTime);
        String signs = WeixinUtil.createSign("UTF-8", parameterTwo);
        Map resultMap = new HashMap();
        resultMap.put("timeStamp",dateTime);
        resultMap.put("nonceStr",map.get("nonce_str"));
        resultMap.put("signType","MD5");
        resultMap.put("paySign",signs);
        resultMap.put("package",packages);
        resultMap.put("orderId",orderInfo.getId());
        return  R.ok(resultMap);
    }
    /**
     * 申请退款接口
     */
    @RequestMapping("/applyReturnMoney")
    public Object applyReturnMoney(@RequestBody OrderInfo orderInfo) {
        orderInfo.setReturnMoneyStatus("0");
        boolean updatePlatformCommodity  = orderInfoService.saveOrUpdate(orderInfo);
        if (updatePlatformCommodity) {
            return R.ok("申请成功！");
        } else {
            return R.fail("申请失败！");
        }
    }


}
