package com.pm.background.admin.sys.controller;
import com.pm.background.admin.sys.entity.Dict;
import com.pm.background.admin.sys.service.IDictService;
import com.pm.background.common.utils.R;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;

import java.util.List;

/**
 * 字典表
 *
 * @author hs
 * @email 457030599@qq.com
 * @date 2018-10-10 21:39:07
 */
@Api(value="DictController",tags={"Dict接口"})
@RestController
@RequestMapping("/sys/dict")
public class DictController {

    @Autowired
    private IDictService dictService;

    /**
     * 根据字典类型获取字典值
     */
    @GetMapping("/getByType/{type}")
    public Object getByType(@PathVariable("type") String type) {
        List<Dict> dicts = dictService.getByType(type);
        return R.ok(dicts);
    }






}