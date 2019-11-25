package com.pm.background.admin.sys.service.impl;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pm.background.admin.common.shiro.ShiroUtils;
import com.pm.background.admin.sys.dao.UserMapper;
import com.pm.background.admin.sys.dto.ChangePassowdForm;
import com.pm.background.admin.sys.entity.Role;
import com.pm.background.admin.sys.entity.User;
import com.pm.background.admin.sys.entity.UserFeedback;
import com.pm.background.admin.sys.service.IUserService;
import com.pm.background.common.constant.Constant;
import com.pm.background.common.utils.R;
import com.pm.background.common.utils.RedisUtil;
import com.pm.background.common.utils.ToolUtil;
import org.apache.commons.lang.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 管理员表
 *
 * @author hs
 * @email 457030599@qq.com
 * @date 2018-10-07 18:03:20
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {


    @Autowired
    private RedisUtil redisUtil;

    @Override
    public IPage<User> selectPageList(User user) {
        return baseMapper.selectPageList(new Page(user.getCurrentPage(),user.getPageSize()),user);
    }

    @Override
    public R saveUser(User user) {

        Assert.notNull(user.getAccount(),"登陆账号不能为空");
        Assert.notNull(user.getName(),"真实姓名不能为空");
        if(ToolUtil.isNotEmpty(user.getId())){
            if(user.getId()== Constant.SUPER_ADMIN&& ShiroUtils.getUserId().longValue()!=Constant.SUPER_ADMIN){
                return R.fail("不能修改超级管理员信息");
            }
            User oldUser = this.getById(user.getId());
            if(!oldUser.getName().equals(user.getName())){
                User user1 = baseMapper.byAccountGetId(user.getAccount());
                if(user1!=null){
                    return R.fail("该账户已存在");
                }
            }
            Assert.notNull(oldUser,"找不到该用户");
            if(this.updateById(user)){

                //删除用户关联角色
                baseMapper.delURByUserId(user.getId());
                // 插入用户角色关系

//                redisUtil.clearCache();


                if(user.getRoleIds().size()<=0){
                    return R.ok();
                }
                else {

//                    baseMapper.saveUserRole(user);
                    for (Long roleId : user.getRoleIds()) {
                        Map<String,Long> map = new HashMap<>();
                        map.put("userId",user.getId());
                        map.put("roleId",roleId);
                        baseMapper.saveUserRole(map);
                    }
                    return R.ok();

                }

            }
            else {
                return R.fail("未知原因，保存失败");
            }
        }
        else {
            User user1 = baseMapper.byAccountGetId(user.getAccount());
            if(user1!=null){
                return R.fail("该账户已存在");
            }
            String salt = RandomStringUtils.randomAlphanumeric(20);
            user.setSalt(salt);
            user.setPassword(ShiroUtils.sha256("123456", salt));
            if(this.save(user)){
                return R.ok();

            }
            else {
                return R.fail("未知原因，保存失败");
            }
        }



    }

    @Override
    public R changeStatus(Long userId, Integer flag) {
        if(userId == Constant.SUPER_ADMIN){
            return R.fail("不能修改超级管理员的状态");
        }
        User user = this.getById(userId);
        Assert.notNull(user,"找不到用户");
        user.setStatus(flag);
        this.updateById(user);
        return R.ok();
    }

    @Override
    public R deleteUser(Long[] userIds) {
        if(ToolUtil.isEmpty(userIds)||userIds.length<=0){
            return R.fail("未选择删除的用户");
        }
        for(Long userId:userIds){
            if(userId == Constant.SUPER_ADMIN){
                return R.fail("管理员不能删除");
            }
        }
        this.removeByIds(Arrays.asList(userIds));
        return R.ok();
    }

    @Override
    public R resetPassword(Long[] userIds) {
        if(ToolUtil.isEmpty(userIds)||userIds.length<=0){
            return R.fail("未选择要重置密码的用户");
        }
        for(Long userId:userIds){
            if(userId == Constant.SUPER_ADMIN){
                return R.fail("管理员密码不能重置");
            }
        }
        List<User> userList = this.list(new QueryWrapper<User>().lambda().in(User::getId,userIds));
        Assert.notNull(userList,"找不到用户");
        userList.forEach(user -> {
            String salt = RandomStringUtils.randomAlphanumeric(20);
            user.setSalt(salt);
            user.setPassword(ShiroUtils.sha256("123456", salt));
        });
        this.updateBatchById(userList);
        return R.ok();
    }

    @Override
    public R changePassword(ChangePassowdForm changePassowdForm) {
        if(!changePassowdForm.getNewPwd().equals(changePassowdForm.getPassword_confirm())){
            return R.fail("两次密码不一致");
        }

        User user = this.getById(ShiroUtils.getUserId());
        Assert.notNull(user,"找不到该用户");
        String old = ShiroUtils.sha256(changePassowdForm.getOldPwd(),user.getSalt());
        if(user.getPassword().equals(old)){
            String salt = RandomStringUtils.randomAlphanumeric(20);
            user.setSalt(salt);
            user.setPassword(ShiroUtils.sha256(changePassowdForm.getNewPwd(), salt));
            this.updateById(user);
            return R.ok("修改成功");
        }
        else {
            return R.fail("密码有误");
        }
    }

    public List<User> getUserByRoleId(Long roleId){
        return baseMapper.getUserByRoleId(roleId);
    }

    @Override
    public List<Long> queryAllMenuId(Long userId) {
        return baseMapper.queryAllMenuId(userId);
    }

    @Override
    public int realNameCertification(User user) {
        return baseMapper.realNameCertification(user);
    }

    @Override
    public int volunteerCertification(User user) {
        return baseMapper.volunteerCertification(user);
    }

    @Override
    public int enterpriseCertification(User user) {
        return baseMapper.enterpriseCertification(user);
    }

    @Override
    public User byAccountGetId(String account) {
        return baseMapper.byAccountGetId(account);
    }

    @Override
    public String sumUserHour(Long userId) {
        String sum =baseMapper.sumUserHour(userId);

        return baseMapper.sumUserHour(userId);
    }

    @Override
    public User selectUser(Long id) {
        return baseMapper.selectUser(id);
    }

    @Override
    public int insertUserFeedback(UserFeedback userFeedback) {
        return baseMapper.insertUserFeedback(userFeedback);
    }

    @Override
    public List<User> byNameGetUser(String name) {
        return baseMapper.byNameGetUser(name);
    }

    @Override
    public List<Role> selectRoleNameString(String id) {
        return baseMapper.selectRoleNameString(id);
    }
}
