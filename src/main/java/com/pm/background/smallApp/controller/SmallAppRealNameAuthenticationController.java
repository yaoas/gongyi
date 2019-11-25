package com.pm.background.smallApp.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pm.background.admin.sys.entity.User;
import com.pm.background.admin.sys.service.IUserService;
import com.pm.background.common.base.controller.BaseController;
import com.pm.background.common.utils.R;
import com.pm.background.welfare.core.active.entity.RealNameAuthentication;
import com.pm.background.welfare.core.active.entity.ReceivingInfo;
import com.pm.background.welfare.core.active.service.RealNameAuthenticationService;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.csource.fastdfs.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


/**
 * 实名认证controller
 */
@RestController
@RequestMapping("/smallApp/realNameAuthentication")
public class SmallAppRealNameAuthenticationController extends BaseController {
    @Autowired
    private RealNameAuthenticationService realNameAuthenticationService;
    @Autowired
    private IUserService userService;

    /**
     * 分页查询列表
     * 1志愿者2实名认证
     * param(currentPage,certificationType)
     */
    @GetMapping(value = "/page/list")
    public Object pageList(RealNameAuthentication realNameAuthentication) {
        QueryWrapper qw = new QueryWrapper<ReceivingInfo>();
       if (StringUtils.isNotEmpty(realNameAuthentication.getIfAgree())) {
            qw.eq("ifAgree", realNameAuthentication.getIfAgree());
        }
        IPage page = realNameAuthenticationService.page(new Page(realNameAuthentication.getCurrentPage(), realNameAuthentication.getPageSize()), qw);
        return R.ok(page);
    }

    /**
     * //点击实名认证时certificationType传2
     * 点击志愿者认证时certificationType传1
     *
     * @param realNameAuthentication
     * @return
     */
    @Transactional
    @RequestMapping("/publishRealNameAuthentication")
    public Object publishRealNameAuthentication(HttpServletRequest request,@RequestBody RealNameAuthentication realNameAuthentication) {
        if(realNameAuthentication.getOpenId()==null||"".equals(realNameAuthentication.getOpenId())){
            R.fail("请先登录");
        }
        User user = userService.byAccountGetId(realNameAuthentication.getOpenId());
        QueryWrapper qw = new QueryWrapper<ReceivingInfo>();
        qw.eq("create_by",user.getId());
        List<RealNameAuthentication> list = realNameAuthenticationService.list(qw);
        if(list.size()>0){
            return R.ok("已经申请过！！！");
        }else {
            realNameAuthentication.setIfAgree("0");
            realNameAuthentication.setIfAgreeName("未审核");
            realNameAuthentication.setCreateBy(user.getId());
            boolean publishFlag = realNameAuthenticationService.saveOrUpdate(realNameAuthentication);
            if (publishFlag) {
                return R.ok("申请成功！");
            } else {
                return R.fail("申请失败！");
            }
        }
    }
    /**
     * 添加认证信息图片
     *
     * @param
     * @return
     */
    @RequestMapping("/publishRealNamePicture")
    public Object publishRealNamePicture(@RequestParam("file") MultipartFile file, String path,String openId) {

        String allPath = "";
        String suffix = "";
        String fileName = file.getOriginalFilename();
        if (StringUtils.isNotEmpty(fileName)) {
            int index = fileName.lastIndexOf(".");
            suffix = index == -1 ? "" : fileName.substring(index + 1);//获取拓展名
        }
        try {

                //读取配置文件
                ClassPathResource resource = new ClassPathResource("fastdfs-client.properties"); //从classpath路径下读取文件
                ClientGlobal.init(resource.getClassLoader().getResource("fastdfs-client.properties").getPath());
                TrackerClient trackerClient = new TrackerClient();
                TrackerServer trackerServer = trackerClient.getConnection();
                //连接storage的客户端
                StorageServer storageServer = null;
                StorageClient1 storageClient1 = new StorageClient1(trackerServer, storageServer);
                //文件上传到文件服务器
                String name = file.getOriginalFilename();
                //获取扩展名
                String ext = FilenameUtils.getExtension(name);
                //获取文件大小
                long size = file.getSize();
                String filePath = storageClient1.upload_file1(file.getBytes(), ext,null); //返回存储的文件路径
                allPath = "https://fdfs.baodingjl.com/" + filePath;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return R.ok(allPath);
    }

    /**
     * 删除
     */
    @Transactional
    @RequestMapping("/delete")
    public Object delete(HttpServletRequest request,@RequestBody RealNameAuthentication realNameAuthentication) {
        boolean deleteFlag = realNameAuthenticationService.removeById(realNameAuthentication.getId());
        User user = userService.byAccountGetId(realNameAuthentication.getOpenId());
        Long userId = user.getId();
        user.setId(userId);
        if ("1".equals(realNameAuthentication.getCertificationType())) {
            user.setVolunteerCertification("2");
            userService.volunteerCertification(user);
        }
        if ("2".equals(realNameAuthentication.getCertificationType())) {
            user.setRealNameCertification("2");
            userService.realNameCertification(user);
        }
        if (deleteFlag) {
            return R.ok("删除成功！");
        } else {
            return R.fail("删除失败！");
        }
    }

}
