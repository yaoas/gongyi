package com.pm.background.admin.sys.service;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.pm.background.admin.sys.dto.ChangePassowdForm;
import com.pm.background.admin.sys.entity.Role;
import com.pm.background.admin.sys.entity.User;
import com.pm.background.admin.sys.entity.UserFeedback;
import com.pm.background.common.base.service.ICommonService;
import com.pm.background.common.utils.R;

import java.util.List;

/**
 * 管理员表
 *
 * @author hs
 * @email 457030599@qq.com
 * @date 2018-10-07 18:03:20
 */
public interface IUserService extends ICommonService<User> {

    IPage<User> selectPageList(User user);

    R saveUser(User user);

    R changeStatus(Long userId, Integer flag);

    R deleteUser(Long userIds[]);

    R resetPassword(Long userIds[]);

    R changePassword(ChangePassowdForm changePassowdForm);

    /**
     * 查询用户的所有菜单ID
     */
    List<Long> queryAllMenuId(Long userId);

    List<User> getUserByRoleId(Long roleId);
    int realNameCertification(User user);
    int volunteerCertification(User user);
    int enterpriseCertification(User user);
    User byAccountGetId(String account);
    String sumUserHour(Long userId);
    User selectUser(Long id);
    int insertUserFeedback(UserFeedback userFeedback);
    List<User> byNameGetUser(String name);
    //根据用户id查询角色
    List<Role> selectRoleNameString(String id);

}
