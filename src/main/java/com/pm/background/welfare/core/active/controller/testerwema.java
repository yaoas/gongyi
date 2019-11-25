package com.pm.background.welfare.core.active.controller;

import net.sf.json.JSONArray;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.web.servlet.ShiroHttpServletRequest;
import org.apache.shiro.web.session.mgt.DefaultWebSessionManager;
import org.apache.shiro.web.util.WebUtils;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;


public class testerwema extends DefaultWebSessionManager {
    @Override
    protected Serializable getSessionId(ServletRequest request, ServletResponse response) {
        String id = WebUtils.toHttp(request).getHeader("token");
        if (!StringUtils.isEmpty(id)) {
            request.setAttribute(ShiroHttpServletRequest.REFERENCED_SESSION_ID_SOURCE, "Stateless request");
            request.setAttribute(ShiroHttpServletRequest.REFERENCED_SESSION_ID, id);
            request.setAttribute(ShiroHttpServletRequest.REFERENCED_SESSION_ID_IS_VALID, Boolean.TRUE);
            return id;
        } else {
            //否则按默认规则从cookie取sessionId
            return super.getSessionId(request, response);
        }
    }



    public static  void  main(String []ww) {

       String aa = "[\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016120339_4geabK8wox\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016120401_eqdmgAwpur\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016120410_pGanADqhRF\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016120417_Vpr658zTKD\"]";
       /* JSONObject objOne = new JSONObject();
        JSONObject objTwo = new JSONObject();
        objTwo.put("order_sn","1234567890");
        objTwo.put("goods_id",6);
        objTwo.put("quantity",1);
        objTwo.put("order_type",3);
        objTwo.put("uid",10000);
        JSONObject objThree = new JSONObject();
        objThree.put("username","小1");
        objThree.put("phone","130000000000");
        objThree.put("address","xx省xx市xx路xx");
        objOne.put("data", objTwo);
        objTwo.put("address", objThree);
        objOne.put("data",objTwo);
        String url = "http://api.kemengjizhang.com/v3.0/komoi/order/sync_order";
        //System.out.println(HttpUtil.sendPost(objOne,url));
        String resultJie = HttpUtil.sendPost(objOne,url);
        System.out.println(resultJie);
        org.json.JSONObject getjson = new org.json.JSONObject(resultJie);
        System.out.println(getjson.get("code").toString());*/
       // System.out.println(result.toString());
       List lis =new ArrayList();
        lis.add("123");
        lis.add("123");
        lis.add("123");
       String ss1= JSONArray.fromObject(lis).toString();
        JSONArray jsonArray = JSONArray.fromObject(ss1);
        System.out.println(ss1);
        String mm = "";
        for (int i = 0;i<jsonArray.size();i++){
            mm+=jsonArray.get(i)+",";
        }



       /* Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        System.out.println("时间为：" +sdf.format(date));*/
       /* System.out.println(UUID.randomUUID().toString());
        System.out.println(UUID.randomUUID().toString().length());

        String uuid = UUID.randomUUID().toString();//转化为String对象
         uuid = uuid.replace("-", "");
        System.out.println(uuid);
        System.out.println(uuid.length());*/

    }
}
