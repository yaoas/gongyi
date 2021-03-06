package com.pm.background.admin.sys.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pm.background.admin.sys.entity.Role;
import com.pm.background.admin.sys.entity.User;
import com.pm.background.admin.sys.entity.UserFeedback;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * 管理员表
 * 
 * @author hs
 * @email 457030599@qq.com
 * @date 2018-10-07 18:03:20
 */
@Repository
@Mapper
public interface UserMapper extends BaseMapper<User> {

    IPage<User> selectPageList(Page page, @Param("user") User user);

    /**
     * 查询用户的所有权限
     * @param userId  用户ID
     */
    List<String> queryAllPerms(Long userId);

    /**
     * 查询用户的所有菜单ID
     */
    List<Long> queryAllMenuId(Long userId);


    List<Long> getRoleIdsById(@Param("userId") Long userId);

    void saveUserRole(@Param("param") Map<String,Long> map);

    void delURByUserId(Long userId);

    List<User> getUserByRoleId(@Param("roleId") Long roleId);

    int realNameCertification(User user);
    int volunteerCertification(User user);
    int enterpriseCertification(User user);
    int insertUserFeedback(UserFeedback userFeedback);
    User byAccountGetId(String account);
    List<User> byNameGetUser(String name);
    User selectUser(Long id);

    String sumUserHour(Long userId);
    //根据用户id查询角色
    List<Role> selectRoleNameString(String id);

}
