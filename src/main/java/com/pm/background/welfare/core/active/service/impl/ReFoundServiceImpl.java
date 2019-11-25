package com.pm.background.welfare.core.active.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pm.background.common.weixinUtils.AuthUtil;
import com.pm.background.common.weixinUtils.CertHttpUtil;
import com.pm.background.common.weixinUtils.WXPayUtil;
import com.pm.background.welfare.core.active.dao.RefonudMapper;
import com.pm.background.welfare.core.active.dao.SignInfoMapper;
import com.pm.background.welfare.core.active.entity.OrderInfo;
import com.pm.background.welfare.core.active.entity.UserIntegral;
import com.pm.background.welfare.core.active.service.OrderInfoService;
import com.pm.background.welfare.core.active.service.RefundService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;

@Service
public class ReFoundServiceImpl extends ServiceImpl<RefonudMapper,OrderInfo> implements RefundService {
 @Autowired
    SignInfoMapper signInfoMapper;
 @Autowired
    OrderInfoService orderInfoService;

    @Override
    public Map returnMoney(OrderInfo orderInfo) {
        Map map = new HashMap();
        // 1.0 拼凑微信退款需要的参数
        String appid = AuthUtil.APPID; // 微信公众号的appid
        String mch_id = AuthUtil.MCHID; // 商户号
        String nonce_str = WXPayUtil.generateNonceStr(); // 生成随机数
        String out_trade_no = String.valueOf(orderInfo.getOutTradeNo()); //商户订单号
        String out_refund_no = String.valueOf(orderInfo.getId());//商户退款单号
        float moneyss = Float.valueOf(orderInfo.getCostCash())*100f;
        String total_fee = String.valueOf((int)moneyss);//订单金额
        String refund_fee = String.valueOf((int)moneyss);//退款金额


        // 2.0 生成map集合
        SortedMap<String, String> packageParams = new TreeMap<String, String>();
        packageParams.put("appid", appid); // 微信公众号的appid
        packageParams.put("mch_id", mch_id); // 商务号
        packageParams.put("nonce_str", nonce_str); // 随机生成后数字，保证安全性
        packageParams.put("out_trade_no", out_trade_no);
        packageParams.put("out_refund_no", out_refund_no);
        packageParams.put("total_fee", total_fee);
        packageParams.put("refund_fee", refund_fee);
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
             returnXml = CertHttpUtil.postData(wxUrl, xml, AuthUtil.MCHID, AuthUtil.CERTPATH);
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
            UserIntegral userIntegral = signInfoMapper.selectIntegralUser(orderInfo.getCreateBy());
            //扣除积分
            userIntegral.setUserIntegral(userIntegral.getUserIntegral() + Float.valueOf(orderInfo.getCostIntegral()));
            signInfoMapper.updateUserIntegral(userIntegral);
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
        }
    }
}
