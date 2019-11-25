package com.pm.background.admin.sys.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.pm.background.admin.common.shiro.ShiroUtils;
import com.pm.background.admin.sys.entity.Role;
import com.pm.background.admin.sys.service.IRoleService;
import com.pm.background.common.utils.R;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * 角色
 *
 * @author hs
 * @email 457030599@qq.com
 * @date 2018-10-10 21:13:03
 */
@Api(value="RoleController",tags={"Role接口"})
@RestController
@RequestMapping("/sys/role")
public class RoleController  {

    @Autowired
    private IRoleService roleService;

    @ApiOperation(value = "分页列表")
    @GetMapping(value = "/page/list")
    public Object pageList(Role role)  {

        return  R.ok(roleService.selectPageList(role));
    }

    @ApiOperation(value = "列表")
    @GetMapping(value = "/list")
    public Object list(Role role)  {
        List<Long> roleList = ShiroUtils.getUserEntity().getRoleList();
        String roleAdminId = "";
        for(Long roleId :roleList){
            if("3".equals(String.valueOf(roleId))){
                roleAdminId = "3";
            }
        }
        QueryWrapper qw = new QueryWrapper<Role>();
        List<Role> list = roleService.list(qw);
        List<Role> newList = new ArrayList<>();
            if("3".equals(roleAdminId)){
                for(Role roles: list){
                   if(!"1".equals(String.valueOf(roles.getId()))){
                       newList.add(roles);
                   }
            }
        }else {
                for(Role roles: list){
                        newList.add(roles);
                }
            }
        return  R.ok(newList);
    }


    @ApiOperation("保存角色")
    @PostMapping(value = "/save")
    public Object save(@RequestBody Role role){
        roleService.saveOrUpdate(role);
        return R.ok();
    }
    @ApiOperation("批量删除用户")
    @PostMapping(value = "/delete")
    public Object delete(@RequestBody Long roleIds[]){

        return roleService.deleteRole(roleIds);
    }

    @ApiOperation("角色详情")
    @GetMapping(value = "/info}")
    public Object info(@RequestParam Long roleId){

        return R.ok(roleService.getById(roleId));
    }

    @ApiOperation(value = "获取角色的菜单权限")
    @GetMapping(value = "/menu/list")
    public Object roleMenuList(@RequestParam Long roleId)  {

        return  R.ok(roleService.getCheckMenuIds(roleId));
    }

    @ApiOperation("配置菜单权限")
    @PostMapping(value = "/save/menu/perm")
    public Object saveMuenPerms(@RequestBody Role role){

        return roleService.saveMuenPerms(role);
    }





}