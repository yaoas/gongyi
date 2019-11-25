package com.pm.background.smallApp.controller;

import com.pm.background.admin.fastdfs.FastDFSClient;
import org.apache.shiro.web.session.mgt.DefaultWebSessionManager;


public class testerwema extends DefaultWebSessionManager {
   /* @Override
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
    }*/



    public static  void  main(String []ww) {
      /*  String ss = "123,132";
        String mm = ",123";
        String ssList[] = ss.split(",");
        String mmList[] = mm.split(",");
        String ee = "";
        for(String ll : ssList){
            ee+=","+ll;

        }*/
     /*   for(String ll : mmList){
            System.out.println(ll);
        }*/
       //System.out.println("返回路径："+  WeixinUtil.getRandomString(32));
        /*String path = "https://fdfs.baodingjl.com/group1/M00/00/0A/PM2i9F1eU2aAOlx6AAAghe1MDIU434.jpg";
        String pathFile[] = path.split("https://fdfs.baodingjl.com/");
        String strongPath[] = pathFile[1].split("/M00");
        String relPath = "M00" + strongPath[1];*/
  /*      float  chahour=35f/3600000f;
        float hourTime = Math.round(chahour*100f)/100f;
System.out.println(hourTime);*/


        try {
            FastDFSClient fastDFSClient=new FastDFSClient("classpath:fastdfs-client.properties");
            String  filePath= fastDFSClient.uploadFile("C:\\Users\\Administrator\\Desktop\\学历资料\\55555.png");
            System.out.println("返回路径："+filePath);
        } catch (Exception e) {
            e.printStackTrace();
        }
       /* String url = "https://api.weixin.qq.com/sns/jscode2session";
        String requestMethod ="GET";
        String outputStr = "appid=wx77830ab10aa179d1&&secret=1c5dc475cad1bd9b4d128137b5f74f5b&&js_code=061T1oNF1Y44570cToMF1mLFNF1T1oNM&&grant_type=authorization_code";
        String result = WeixinUtil.httpsRequest(url,requestMethod,outputStr);
        Map mapTypes = JSON.parseObject(result);
        System.out.println(mapTypes.get("openid"));*/
        /*String ss="<xml> <return_code><![CDATA[SUCCESS]]></return_code><return_msg><![CDATA[OK]]></return_msg><appid><![CDATA[wx77830ab10aa179d1]]></appid><mch_id><![CDATA[1550519531]]></mch_id><nonce_str><![CDATA[eRjStyxGbkxz9ELT]]></nonce_str></xml>";
        System.out.println(WeixinUtil.doXMLParse(ss));*/

/*
       *//* Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        System.out.println("时间为：" +sdf.format(date));*//*
        System.out.println(UUID.randomUUID().toString());
        System.out.println(UUID.randomUUID().toString().length());

        String uuid = UUID.randomUUID().toString();//转化为String对象
         uuid = uuid.replace("-", "");
        System.out.println(uuid);
        System.out.println(uuid.length());*/

    }
}
