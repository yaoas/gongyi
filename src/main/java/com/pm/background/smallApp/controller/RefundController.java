package com.pm.background.smallApp.controller;

/**
 * @ClassName RefundController
 * @Description TODO
 * @Author yaoas
 * @Date 2019/10/15 15:08
 * @Version 1.0
 */

import com.pm.background.welfare.core.active.entity.OrderInfo;
import com.pm.background.welfare.core.active.service.OrderInfoService;
import com.pm.background.welfare.core.active.service.RefundService;
import com.pm.background.welfare.core.active.service.SignInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * @author: KOLO
 * @date:2018年12月29日 上午9:13:58
 * @version: 1.0 申请订单退款
 */
@RestController
@RequestMapping("/smallApp/refund")
public class RefundController {
    @Autowired
    private OrderInfoService orderInfoService;
    @Autowired
    private SignInfoService signInfoService;
    @Autowired
    private RefundService refundService;
    /**
     * @Title: transfer
     * @Description: 申请订单退款
     * @param:
     * @return:
     */
    @RequestMapping("/out")
    public Object transfer(HttpServletRequest request, HttpServletResponse response, String orderId) {
        Map map = new HashMap();
        OrderInfo orderInfo = orderInfoService.getById(orderId);
        if("3".equals(orderInfo.getPaymentStatus())){
            map.put("code","200");
            map.put("msg","已退款!!!");
            return map;
        }else {
            map =  refundService.returnMoney(orderInfo);
            return map;
            // 1.0 拼凑微信退款需要的参数
           /* String appid = AuthUtil.APPID; // 微信公众号的appid
            String mch_id = AuthUtil.MCHID; // 商户号
            String nonce_str = WXPayUtil.generateNonceStr(); // 生成随机数
            String out_trade_no = String.valueOf(orderInfo.getOutTradeNo()); //商户订单号
            String out_refund_no = String.valueOf(orderInfo.getId());//商户退款单号
            String total_fee = orderInfo.getCostCash();//订单金额
            String refund_fee = orderInfo.getCostCash();//退款金额


            // 2.0 生成map集合
            SortedMap<String, String> packageParams = new TreeMap<String, String>();
            packageParams.put("appid", appid); // 微信公众号的appid
            packageParams.put("mch_id", mch_id); // 商务号
            packageParams.put("nonce_str", nonce_str); // 随机生成后数字，保证安全性
            packageParams.put("out_trade_no", out_trade_no);
            packageParams.put("out_refund_no", out_refund_no);
            packageParams.put("total_fee", "1");
            packageParams.put("refund_fee", "1");
            String returnXml = "";
            Map<String, String> returnMap = new HashMap<>();
            try {
                // 3.0 利用上面的参数，先去生成自己的签名
                String sign = WXPayUtil.generateSignature(packageParams, AuthUtil.PATERNERKEY);

                // 4.0 将签名再放回map中，它也是一个参数
                packageParams.put("sign", sign);

                // 5.0将当前的map结合转化成xml格式
                String xml = WXPayUtil.mapToXml(packageParams);

                // 6.0获取需要发送的url地址
                String wxUrl = "https://api.mch.weixin.qq.com/secapi/pay/refund"; // 获取退款的api接口

                System.out.println("发送前的xml为：" + xml);

                // 7,向微信发送请求转账请求
               // returnXml = CertHttpUtil.postData(wxUrl, xml, AuthUtil.MCHID, AuthUtil.CERTPATH);
                returnXml = "<xml><return_code><![CDATA[SUCCESS]]></return_code>\n" +
                        "<return_msg><![CDATA[OK]]></return_msg>\n" +
                        "<appid><![CDATA[wx77830ab10aa179d1]]></appid>\n" +
                        "<mch_id><![CDATA[1550519531]]></mch_id>\n" +
                        "<nonce_str><![CDATA[exXQ1QKzK0wN7Ndv]]></nonce_str>\n" +
                        "<sign><![CDATA[25A2EBB28D41B97CFB5C2097612F60F6]]></sign>\n" +
                        "<result_code><![CDATA[SUCCESS]]></result_code>\n" +
                        "<transaction_id><![CDATA[4200000421201910218548302077]]></transaction_id>\n" +
                        "<out_trade_no><![CDATA[4decuhbM57xUoIT3JA5lLZrixzozB1U0]]></out_trade_no>\n" +
                        "<out_refund_no><![CDATA[1186122391056273410]]></out_refund_no>\n" +
                        "<refund_id><![CDATA[50000502232019102112874162618]]></refund_id>\n" +
                        "<refund_channel><![CDATA[]]></refund_channel>\n" +
                        "<refund_fee>1</refund_fee>\n" +
                        "<coupon_refund_fee>0</coupon_refund_fee>\n" +
                        "<total_fee>1</total_fee>\n" +
                        "<cash_fee>1</cash_fee>\n" +
                        "<coupon_refund_count>0</coupon_refund_count>\n" +
                        "<cash_refund_fee>1</cash_refund_fee>\n" +
                        "</xml>";
                System.out.println("返回的returnXml为:" + returnXml);

                // 8，将微信返回的xml结果转成map格式
                returnMap = WXPayUtil.xmlToMap(returnXml);

            } catch (Exception e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            if (returnMap.get("return_code").equals("SUCCESS")) {
                // 退款成功
                System.out.println("returnMap为:" + returnMap);
                map.put("code","200");
                map.put("msg","退款成功");
                map.put("data",returnXml);
                //更改用户积分
                UserIntegral userIntegral = signInfoService.selectIntegralUser(orderInfo.getCreateBy());
                //扣除积分
                userIntegral.setUserIntegral(userIntegral.getUserIntegral() + Float.valueOf(orderInfo.getCostIntegral()));
                signInfoService.updateUserIntegral(userIntegral);
                //更改订单状态
                orderInfo.setPaymentStatusName("退款成功");
                orderInfo.setPaymentStatus("3");
                orderInfoService.updatePaymentStatus(orderInfo);
                return map;

            }else {
                map.put("code","500");
                map.put("msg","退款失败");
                map.put("data",returnXml);
                return map;
            }*/
        }
    }
  /*  @RequestMapping("/failOut")
    public Object failOut(HttpServletRequest request, HttpServletResponse response,@RequestBody OrderInfo orderInfo) {
        int i =orderInfoService.failOut(orderInfo);
        Map map = new HashMap();
        if(i > 0){
            map.put("code","200");
            map.put("msg","记录成功");
        }else {
            map.put("code","500");
            map.put("msg","记录失败");
        }
        return map;
    }*/
}
