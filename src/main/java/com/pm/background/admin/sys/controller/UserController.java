package com.pm.background.admin.sys.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pm.background.admin.common.factory.impl.ConstantFactory;
import com.pm.background.admin.sys.dto.ChangePassowdForm;
import com.pm.background.admin.sys.entity.Dept;
import com.pm.background.admin.sys.entity.Role;
import com.pm.background.admin.sys.entity.User;
import com.pm.background.admin.sys.entity.UserFeedback;
import com.pm.background.admin.sys.service.IDeptService;
import com.pm.background.admin.sys.service.IUserService;
import com.pm.background.common.utils.R;
import com.pm.background.common.utils.ToolUtil;
import com.pm.background.welfare.core.active.entity.UserIntegral;
import com.pm.background.welfare.core.active.service.SignInfoService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * 管理员表
 *
 * @author hs
 * @email 457030599@qq.com
 * @date 2018-10-07 18:03:20
 */
@Api(value="UserController",tags={"User接口"})
@RequestMapping("/sys/user")
@RestController
public class UserController {

    @Autowired
    private IUserService userService;

    @Autowired
    private IDeptService deptService;
    @Autowired
    private SignInfoService signInfoService;


    @ApiOperation(value = "分页列表")
    @GetMapping(value = "/page/list")
    public Object pageList(User user)  {
        QueryWrapper qw = new QueryWrapper<User>();
        if(user.getRoleNameString()!=null && !"".equals(user.getRoleNameString())){
            String userIds = "SELECT  a.user_id as id FROM  sys_user_role a ,sys_role b where a.role_id = b.id and b.role_name = '"+user.getRoleNameString()+"'";
            qw.inSql("id",userIds);
        }

                if(user.getAccount()!=null){
                   // user.setAccount("%"+user.getAccount()+"%");
                    qw.like("account",user.getAccount());
                }
                if(user.getName()!=null){
                  //user.setName("%"+user.getName()+"%");
                    qw.like("name",user.getName());
                }
        qw.notIn("id","1");
        qw.orderByDesc("create_time");
        IPage page = userService.page(new Page(user.getCurrentPage(), user.getPageSize()), qw);
        List<User> records = page.getRecords();
        List<User> listAll = new ArrayList<>();
        if(records.size() > 0){
            for(User us : records){
                List<Role> rolesName = userService.selectRoleNameString(String.valueOf(us.getId()));
                if(rolesName.size() > 0){
                    String mm = "";
                     for (Role ro : rolesName){
                          mm += ro.getRoleName()+",";
                          mm = mm.substring(0,mm.length()-1);
                     }
                    us.setRoleNameString(mm);
                }
                listAll.add(us);
            }
        }
        page.setRecords(listAll);
        return  R.ok(page);
    }

    @ApiOperation("改变状态,是否可用")
    @PostMapping(value = "/change/status/{flag}")
    public Object changeStatus(@RequestBody Long userId,@PathVariable Integer flag){
       return userService.changeStatus(userId,flag);
    }

    @ApiOperation("保存用户")
    @PostMapping(value = "/save")
    public Object save(@RequestBody User user){
        user.setStatus(1);
        //删除缓存
        if (ToolUtil.isEmpty(user.getName()) || ToolUtil.isEmpty(user.getAccount())) {
            return R.fail("名字或账户不能为空");
        }
        user.setDelFlag(0);
        R r =userService.saveUser(user);
        UserIntegral userIntegral = new UserIntegral();
        userIntegral.setUserId(user.getId());
        userIntegral.setUserIntegral(0f);
        signInfoService.insertIntegral(userIntegral);
        return r;
    }

    @ApiOperation("批量删除用户")
    @PostMapping(value = "/delete")
    public Object delete(@RequestBody Long userIds[]){
        return userService.deleteUser(userIds);
    }

    @ApiOperation("用户详情")
    @GetMapping(value = "/info")
    public Object info(@RequestParam Long userId){
        User user = userService.getById(userId);
        if(ToolUtil.isEmpty(user)){
            return R.fail("找不到该用户");
        }
        List<Long> roleIds = ConstantFactory.me().getRoleIdsById(userId);
        user.setRoleIds(roleIds);
        Dept dept = deptService.getById(user.getDeptId());
        if(ToolUtil.isNotEmpty(dept)){
            user.setDeptName(dept.getName());

        }
        return R.ok(user);
    }

    @ApiOperation("重置用户密码")
    @PostMapping(value = "/reset/password")
    public Object resetPassword(@RequestBody Long userIds[]){
        return userService.resetPassword(userIds);
    }

    @ApiOperation("修改密码")
    @PostMapping(value = "/change/password")
    public Object changePassword(@RequestBody ChangePassowdForm changePassowdForm){

        return userService.changePassword(changePassowdForm);
    }

    @ApiOperation("查询角色下的用户")
    @GetMapping(value = "/getUserByRole/{id}")
    public R getUserByRole(@PathVariable Long id){
        List<User> users = userService.getUserByRoleId(id);
        return R.ok(users);
    }


    /**
     * 认证接口
     * @param user(realNameCertification,volunteerCertification,enterpriseCertification其中一个值)
     * 1代表认证 2 未认证
     * @return
     */
    @RequestMapping(value = "/userCertification")
    public  Object userCertification(HttpServletRequest request,@RequestBody User user){
        int i=0;
        Long userId = (Long)request.getAttribute("userId");
        user.setId(userId);
        if(user.getRealNameCertification()!=null && !"".equals(user.getRealNameCertification())){
           i = userService.realNameCertification(user);
        }
        if(user.getVolunteerCertification()!=null && !"".equals(user.getVolunteerCertification())){
            i = userService.volunteerCertification(user);
        }
        if(user.getEnterpriseCertification()!=null && !"".equals(user.getEnterpriseCertification())){
            i = userService.enterpriseCertification(user);
        }
        if(i > 0){
            return  R.ok("认证成功");
        }else{
            return  R.ok("认证失败");
        }
    }

    /**
     * 个人信息查询接口
     */
    @RequestMapping(value = "/queryPersonalInformation")
    public Object queryPersonalInformation(HttpServletRequest request){
        Long userId = (Long)request.getAttribute("userId");
        User user = userService.selectUser(userId);
        String userHour = userService.sumUserHour(userId);
        UserIntegral integral=signInfoService.selectIntegralUser(userId);
        if(integral ==null||"".equals(integral)){
            user.setUserIntegral(0f);
        }else {
            user.setUserIntegral(integral.getUserIntegral());
        }
        if(userHour==null||"".equals(userHour)){
            user.setActiveHour(0f);
        }else {
            user.setActiveHour(Float.valueOf(userHour));
        }
        return R.ok(user);
    }

    @RequestMapping(value = "/userFeedback")
    public Object userFeedback(@RequestBody UserFeedback userFeedback){
        int i = userService.insertUserFeedback(userFeedback);
        if(i > 0){
            return  R.ok("反馈成功");
        }else{
            return  R.ok("反馈失败");
        }
    }





}