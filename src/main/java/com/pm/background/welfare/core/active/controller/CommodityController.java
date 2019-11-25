package com.pm.background.welfare.core.active.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pm.background.admin.common.shiro.ShiroUtils;
import com.pm.background.admin.sys.service.IDictService;
import com.pm.background.common.base.controller.BaseController;
import com.pm.background.common.utils.R;
import com.pm.background.common.utils.WeixinUtil;
import com.pm.background.welfare.core.active.entity.BindingCommodity;
import com.pm.background.welfare.core.active.entity.Commodity;
import com.pm.background.welfare.core.active.entity.IntegralCommodity;
import com.pm.background.welfare.core.active.service.CommodityService;
import com.pm.background.welfare.core.active.service.CommoditySpecificationService;
import com.pm.background.welfare.core.active.service.IActiveInfoService;
import com.pm.background.welfare.core.active.service.RatioService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * 商品controller
 */
@RestController
@RequestMapping("/commodity")
public class CommodityController extends BaseController {
    @Autowired
    private CommodityService commodityService;
    @Autowired
    private IActiveInfoService activeInfoService;
    @Autowired
    private IDictService iDictService;
    @Autowired
    private RatioService ratioService;
    @Autowired
    private CommoditySpecificationService commoditySpecificationService;

    /**
     * 分页查询列表
     */
    @GetMapping(value = "/page/list")
    public Object pageList(Commodity commodity) {
        Long userId = ShiroUtils.getUserEntity().getId();
        QueryWrapper qw = new QueryWrapper<Commodity>();
        if (userId != 1) {
            qw.eq("userId", userId);
        }
        if (StringUtils.isNotEmpty(commodity.getName())) {
            qw.like("name", commodity.getName());
        }
        if (commodity.getType() != null) {
            qw.eq("type", commodity.getType());
        }
        if (commodity.getStatus() != null) {
            qw.eq("status", commodity.getStatus());
        }

        if (commodity.getBindingStatus() != null) {
            qw.ne("bindingStatus", commodity.getBindingStatus());
        }
        qw.orderByDesc("update_time");
        qw.orderByDesc("create_time");
        IPage page = commodityService.page(new Page(commodity.getCurrentPage(), commodity.getPageSize()), qw);
        return R.ok(page);
    }
   /* *//**
     * 修改
     *
     * @param commodity
     * @return
     *//*
    @Transactional
    @RequestMapping("/updateActiveInfo")
    public Object updateActiveInfo(HttpServletRequest request, @RequestBody Commodity commodity) {
        if(commodity.getName()==null||"".equals(commodity.getName())){
             return R.fail("名称不能为空");
        }
        if(commodity.getType()==null){
            return R.fail("商品类型不能为空");
        }
        if(commodity.getPayType()==null||"".equals(commodity.getPayType())){
            return R.fail("支付类型不能为空");
        }
        if(commodity.getCationRatioId()==null||"".equals(commodity.getCationRatioId())){
            return R.fail("抵扣比例不能为空");
        }

        if(47==commodity.getType()){
            if(commodity.getCommodityTypeId()==null||"".equals(commodity.getCommodityTypeId())){
                return R.fail("商品种类不能为空");
            }
            if(commodity.getCommoditySpecifications()==null||"".equals(commodity.getCommoditySpecifications())||"[]".equals(commodity.getCommoditySpecifications())){
                return R.fail("规格不能为空");
            }
        }
        //判断是实物还是电子券
        if (commodity.getType() == 48) {
            //电子券
            String path = request.getSession().getServletContext().getRealPath("/") + "123.jpg";
            ImgQrTool.createSimpleQr("测试二维码", 200, 200, path);
            try {
                String allPath = WeixinUtil.returnPatnByByte(FileToByte.File2byte(path));
                commodity.setCodeAddress(allPath);
                File f = new File(path);
                f.delete();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        String typeName = iDictService.byIdGetName(commodity.getType());
        commodity.setTypeName(typeName);

        String payTypeName = iDictService.byIdGetName(Integer.valueOf(commodity.getPayType()));
        commodity.setPayTypeName(payTypeName);

        String statusName = iDictService.byIdGetName(commodity.getStatus());
        commodity.setStatusName(statusName);
        if(commodity.getCationRatioId()!=null&&!"".equals(commodity.getCationRatioId())){
            DudecationRatio dudecationRatio = ratioService.getById(Long.valueOf(commodity.getCationRatioId()));
            commodity.setCationRatio(dudecationRatio.getRatio());
        }
        if(commodity.getCommoditySpecifications()!=null&&!"".equals(commodity.getCommoditySpecifications())&&!"[]".equals(commodity.getCommoditySpecifications())){
            List lis =new ArrayList();
            commodity.setCommoditySpecificationsJson(commodity.getCommoditySpecifications());
            JSONArray jsonArray = JSONArray.fromObject(commodity.getCommoditySpecifications());
            String mmSpe = "";
            String mmSpeName = "";
            String mmSpeNameJson = "";
            for (int i = 0;i<jsonArray.size();i++){
                mmSpe+=jsonArray.get(i)+",";
                CommoditySpecifications commoditySpecifications =  commoditySpecificationService.getById(jsonArray.get(i).toString());
                mmSpeName+=commoditySpecifications.getSpecificationsName()+",";
                lis.add(commoditySpecifications.getSpecificationsName());
            }
            commodity.setCommoditySpecifications(mmSpe.substring(0,mmSpe.length()-1));
            commodity.setCommoditySpecificationsArray(mmSpeName.substring(0,mmSpeName.length()-1));
            commodity.setCommoditySpecificationsArrayJson(JSONArray.fromObject(lis).toString());
        }
        if(commodity.getCommoditySpecifications()==null||"".equals(commodity.getCommoditySpecifications())||"[]".equals(commodity.getCommoditySpecifications())){
            commodity.setCommoditySpecificationsArrayJson("");
            commodity.setCommoditySpecificationsArray("");
            commodity.setCommoditySpecificationsJson("");
        }
        boolean updateActiveInfoFlag = commodityService.updateById(commodity);
        if (updateActiveInfoFlag) {
            return R.ok("修改成功！");
        } else {
            return R.fail("修改失败！");
        }
    }*/

   /* @Transactional
    @RequestMapping("/publishCommodity")
    public Object publishCommodity(HttpServletRequest request, @RequestBody Commodity commodity) {
        if(commodity.getName()==null||"".equals(commodity.getName())){
            return R.fail("名称不能为空");
        }
        if(commodity.getType()==null){
            return R.fail("商品类型不能为空");
        }
        if(commodity.getPayType()==null||"".equals(commodity.getPayType())){
            return R.fail("支付类型不能为空");
        }
        if(commodity.getCationRatioId()==null||"".equals(commodity.getCationRatioId())){
            return R.fail("抵扣比例不能为空");
        }

        if(47==commodity.getType()){
            if(commodity.getCommodityTypeId()==null||"".equals(commodity.getCommodityTypeId())){
                return R.fail("商品种类不能为空");
            }
            if(commodity.getCommoditySpecifications()==null||"".equals(commodity.getCommoditySpecifications())||"[]".equals(commodity.getCommoditySpecifications())){
                return R.fail("规格不能为空");
            }
        }
        //判断是实物还是电子券
        if (commodity.getType() == 48) {
            //电子券
            String path = request.getSession().getServletContext().getRealPath("/") + "123.jpg";
            ImgQrTool.createSimpleQr("测试二维码", 200, 200, path);
            try {
                String allPath = WeixinUtil.returnPatnByByte(FileToByte.File2byte(path));
                commodity.setCodeAddress(allPath);
                File f = new File(path);
                f.delete();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        Long userId = ShiroUtils.getUserEntity().getId();
        String typeName = iDictService.byIdGetName(commodity.getType());
        String payTypeName = iDictService.byIdGetName(Integer.valueOf(commodity.getPayType()));
        if(commodity.getCationRatioId()!=null&&!"".equals(commodity.getCationRatioId())){
            DudecationRatio dudecationRatio = ratioService.getById(Long.valueOf(commodity.getCationRatioId()));
            commodity.setCationRatio(dudecationRatio.getRatio());
        }
        commodity.setStatus(52);
        String statusName = iDictService.byIdGetName(commodity.getStatus());
        commodity.setUserId(userId);
        commodity.setTypeName(typeName);
        commodity.setPayTypeName(payTypeName);
        commodity.setStatusName(statusName);
        commodity.setBindingStatus("2");
        if(commodity.getCommoditySpecifications()!=null&&!"".equals(commodity.getCommoditySpecifications())&&!"[]".equals(commodity.getCommoditySpecifications())){
            List lis =new ArrayList();
            commodity.setCommoditySpecificationsJson(commodity.getCommoditySpecifications());
            JSONArray jsonArray = JSONArray.fromObject(commodity.getCommoditySpecifications());
            String mmSpe = "";
            String mmSpeName = "";
            for (int i = 0;i<jsonArray.size();i++){
                mmSpe+=jsonArray.get(i)+",";
                CommoditySpecifications commoditySpecifications =  commoditySpecificationService.getById(jsonArray.get(i).toString());
                mmSpeName+=commoditySpecifications.getSpecificationsName()+",";
                lis.add(commoditySpecifications.getSpecificationsName());
            }
            commodity.setCommoditySpecifications(mmSpe.substring(0,mmSpe.length()-1));
            commodity.setCommoditySpecificationsArray(mmSpeName.substring(0,mmSpeName.length()-1));
            commodity.setCommoditySpecificationsArrayJson(JSONArray.fromObject(lis).toString());
        }
        if(commodity.getCommoditySpecifications()==null||"".equals(commodity.getCommoditySpecifications())||"[]".equals(commodity.getCommoditySpecifications())){
            commodity.setCommoditySpecificationsArrayJson("");
            commodity.setCommoditySpecificationsArray("");
            commodity.setCommoditySpecificationsJson("");
        }
        boolean publishFlag = commodityService.saveOrUpdate(commodity);
        if (publishFlag) {
            return R.ok("发布成功！");
        } else {
            return R.fail("发布失败！");
        }

    }*/

    /**
     * 商品上架
     */
    @RequestMapping("/upCommodity")
    public Object upCommodity(@RequestBody Commodity commodity) {
        int upStatus = commodityService.upCommodity(commodity);
        if (upStatus != 0) {
            return R.ok("上架成功！");
        } else {
            return R.fail("上架失败！");
        }

    }

    /**
     * 商品下架
     */
    @Transactional
    @RequestMapping("/downCommodity")
    public Object downCommodity(@RequestBody Commodity commodity) {
        int upStatus = commodityService.downCommodity(commodity);
        commodityService.deleteByCommodityIdGetActiveId(commodity.getId());
        if (upStatus != 0) {
            return R.ok("下架成功！");
        } else {
            return R.fail("下架失败！");
        }


    }

    /**
     * 删除
     */
    @Transactional
    @RequestMapping("/delete")
    public Object delete(String id) {
        BindingCommodity bindingCommodity = new BindingCommodity();
        long longId = Long.valueOf(id);
        boolean deleteFlag = commodityService.deleteCommodity(longId);
        bindingCommodity.setActiveId(longId);
        activeInfoService.deleteBindingCommodity(bindingCommodity);
        commodityService.deleteByCommodityIdGetActiveId(longId);
        if (deleteFlag) {
            return R.ok("删除成功！");
        } else {
            return R.fail("删除失败！");
        }
    }

    /**
     * 查看
     * param id
     */
    @RequestMapping("/view")
    public Object view(String id) {
        long longId = Long.valueOf(id);
        Commodity commodity = commodityService.getActiveInfo(longId);
        return R.ok(commodity);
    }

    /**
     * 返回路径 MultipartFile
     *
     * @param file
     * @return
     */
    @CrossOrigin
    @RequestMapping("/returnPath")
    public Object returnPath(MultipartFile file) {

        return R.ok(WeixinUtil.returnPatn(file));
    }

    /**
     * 删除fastdfs文件
     */
    @RequestMapping("/deleteFastPath")
    public Object deleteFastPath(String path) {
        int deleteFlag = 0;
        try {
            String pathFile[] = path.split("https://fdfs.baodingjl.com/");
            String strongPath[] = pathFile[1].split("/M00");
            String relPath = "M00" + strongPath[1];
            deleteFlag = WeixinUtil.deleteReturnPatn(relPath);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (deleteFlag == 0) {
            return R.ok("删除成功！");
        } else {
            return R.fail("删除失败！");
        }

    }

    /**
     * 积分商品分页
     *
     * @param integralCommodity
     * @return
     */
    @GetMapping(value = "/page/integralList")
    public Object integralPageList(IntegralCommodity integralCommodity) {
        integralCommodity.setStartSize((integralCommodity.getCurrentPage() - 1) * 10);
        integralCommodity.setEndSize(10);
        List<IntegralCommodity> list = commodityService.selectIntegralCommodity(integralCommodity);
        return R.ok(list);
    }

    /**
     * 添加积分商品
     * param (imageAddress,title,integral,popularType)
     */
    @RequestMapping("/insertIntegralCommodity")
    public Object insertIntegralCommodity(@RequestBody IntegralCommodity integralCommodity) {
        int i = commodityService.insertIntegralCommodity(integralCommodity);
        if (i > 0) {
            return R.ok("添加成功！");
        } else {
            return R.fail("添加失败！");
        }
    }

    /**
     * 删除积分商品
     *
     * @param id
     * @return
     */
    @RequestMapping("/deleteIntegralCommodity")
    public Object deleteIntegralCommodity(Long id) {
        int i = commodityService.deleteIntegralCommodity(id);
        if (i > 0) {
            return R.ok("删除成功！");
        } else {
            return R.fail("删除失败！");
        }
    }

    /**
     * 修改积分商品
     * param (imageAddress,title,integral,popularType,id)
     */
    @RequestMapping("/updateIntegralCommodity")
    public Object updateIntegralCommodity(@RequestBody IntegralCommodity integralCommodity) {
        int i = commodityService.updateIntegralCommodity(integralCommodity);
        if (i > 0) {
            return R.ok("修改成功！");
        } else {
            return R.fail("修改失败！");
        }
    }


}
