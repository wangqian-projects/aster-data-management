package com.aster.cloud.data.management.entity;

import com.aster.cloud.commons.core.entity.BasicEntity;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 系统配置
 *
 * @author 王骞
 * @date 2021-01-31
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName(value = "sys_config")
public class SysConfig extends BasicEntity {

    @ApiModelProperty(value = "编码")
    private String code;

    @ApiModelProperty(value = "系统链接")
    private String url;

    @ApiModelProperty(value = "系统名称")
    private String name;

    @ApiModelProperty(value = "备注")
    private String note;

}

