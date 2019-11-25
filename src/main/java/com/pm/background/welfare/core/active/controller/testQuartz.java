package com.pm.background.welfare.core.active.controller;

import net.sf.jsqlparser.expression.DateTimeLiteralExpression;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;


//@Component
public class testQuartz {

 @Scheduled(cron="0/5 * *  * * ? ")
    public void testQuartzss(){
        DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        System.out.println(sdf.format(new Date())+"*********任务每5秒执行一次进入测试");
    }

}
