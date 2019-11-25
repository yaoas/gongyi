/**
 * Copyright 2018 人人开源 http://www.renren.io
 * <p>
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 * <p>
 * http://www.apache.org/licenses/LICENSE-2.0
 * <p>
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */

package com.pm.background.admin.config;

import com.pm.background.admin.common.intercept.GunsUserFilter;
import com.pm.background.admin.common.intercept.ShiroUserFilter;
import com.pm.background.admin.common.shiro.UserRealm;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.session.mgt.SessionManager;
import org.apache.shiro.spring.LifecycleBeanPostProcessor;
import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.apache.shiro.web.session.mgt.DefaultWebSessionManager;
import org.springframework.aop.framework.autoproxy.DefaultAdvisorAutoProxyCreator;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.servlet.Filter;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * Shiro的配置文件
 *
 * @author Mark sunlightcs@gmail.com
 * @since 3.0.0 2017-09-27
 */
@Configuration
public class ShiroConfig {

    @Bean("sessionManager")
    public SessionManager sessionManager(/*RedisShiroSessionDAO redisShiroSessionDAO,
                                         @Value("${beam.admin.redis-open}") boolean redisOpen,
                                         @Value("${beam.admin.shiro-redis}") boolean shiroRedis*/){
        DefaultWebSessionManager sessionManager = new DefaultWebSessionManager();
        //设置session过期时间为1小时(单位：毫秒)，默认为30分钟
        sessionManager.setGlobalSessionTimeout(60 * 60 * 1000);
        sessionManager.setSessionValidationSchedulerEnabled(true);
        sessionManager.setSessionIdUrlRewritingEnabled(false);

        //如果开启redis缓存且beam.admin.shiro-redis=true，则shiro session存到redis里
//        if(redisOpen && shiroRedis){
//            sessionManager.setSessionDAO(redisShiroSessionDAO);
//        }
        return sessionManager;
    }

    @Bean("securityManager")
    public SecurityManager securityManager(UserRealm userRealm, SessionManager sessionManager) {
        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
        securityManager.setRealm(userRealm);
        securityManager.setSessionManager(sessionManager);

        return securityManager;
    }


    @Bean("shiroFilter")
    public ShiroFilterFactoryBean shiroFilter(SecurityManager securityManager) {
        ShiroFilterFactoryBean shiroFilter = new ShiroFilterFactoryBean();
        shiroFilter.setSecurityManager(securityManager);
        shiroFilter.setLoginUrl("/login");
        shiroFilter.setUnauthorizedUrl("/");

        //session过期拦截
        HashMap<String, Filter> myFilters = new HashMap<>();
        myFilters.put("user", new GunsUserFilter());
        //*跨域*/
        myFilters.put("user", new ShiroUserFilter());
        shiroFilter.setFilters(myFilters);

        Map<String, String> filterMap = new LinkedHashMap<>();

        /*swagger 资源过滤*/
        filterMap.put("/swagger/**", "anon");
        filterMap.put("/v2/api-docs", "anon");
        filterMap.put("/swagger-ui.html", "anon");
        filterMap.put("/webjars/**", "anon");
        filterMap.put("/swagger-resources/**", "anon");
        filterMap.put("/workorder/getManufactureOrders","anon");
        filterMap.put("/turnorder/add","anon");
        filterMap.put("/working/getList","anon");
        filterMap.put("/warehousing/testQr","anon");
        filterMap.put("/warehousing/checkQrCode/*","anon");
        filterMap.put("/fast/file/upload/*","anon");


        filterMap.put("/login/**", "anon"); //登陆
        filterMap.put("/smallApp/**", "anon"); //不在拦截这类请求
        filterMap.put("/kaptcha", "anon");  //验证码
        filterMap.put("/global/*", "anon");  //全局路径（错误或者超时）
        filterMap.put("/mbp3erTHiU.txt", "anon");
        filterMap.put("/9HF3VfACcX.txt", "anon");
        filterMap.put("/favicon.ico", "anon");
        filterMap.put("/**", "user");
        shiroFilter.setFilterChainDefinitionMap(filterMap);

        return shiroFilter;
    }

    @Bean("lifecycleBeanPostProcessor")
    public LifecycleBeanPostProcessor lifecycleBeanPostProcessor() {
        return new LifecycleBeanPostProcessor();
    }

    @Bean
    public DefaultAdvisorAutoProxyCreator defaultAdvisorAutoProxyCreator() {
        DefaultAdvisorAutoProxyCreator proxyCreator = new DefaultAdvisorAutoProxyCreator();
        proxyCreator.setProxyTargetClass(true);
        return proxyCreator;
    }

    @Bean
    public AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor(SecurityManager securityManager) {
        AuthorizationAttributeSourceAdvisor advisor = new AuthorizationAttributeSourceAdvisor();
        advisor.setSecurityManager(securityManager);
        return advisor;
    }
}
