package com.aster.cloud.data.management.controller;

import com.aster.cloud.commons.core.api.Result;
import com.aster.cloud.commons.core.api.param.ParamAssert;
import com.aster.cloud.data.management.entity.SysConfig;
import com.aster.cloud.web.util.IdUtil;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author 王骞
 * @date 2021-01-31
 */
@RestController
@RequestMapping("/sys/config")
public class SysConfigController {

    @PostMapping("/create")
    public Result<Long> create(@RequestBody SysConfig sysConfig) {
        ParamAssert.param(sysConfig).isNotBlank(SysConfig::getCode, "新增时不能传入code");
        return Result.success(IdUtil.next());
    }

}
