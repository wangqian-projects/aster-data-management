CREATE TABLE `sys_config` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `code` varchar(32) NOT NULL COMMENT '编码',
  `url` varchar(64) NOT NULL COMMENT '系统链接',
  `name` varchar(255) NOT NULL COMMENT '系统名称',
  `note` varchar(255) DEFAULT NULL COMMENT '备注',
  `tenant_id` int(11) DEFAULT '0' COMMENT '租户id',
  `create_by` varchar(32) DEFAULT NULL COMMENT '建立人员',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人员',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '建立时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `del_flag` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除标志',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_code` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='系统表';


CREATE TABLE `sys_config_type` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `code` varchar(100) NOT NULL COMMENT '参数编码',
  `type` varchar(255) NOT NULL COMMENT '参数类型英文描述',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `grade` tinyint(11) NOT NULL COMMENT '配置等级:1一级参数2二级参数3三级参数',
  `note` varchar(255) DEFAULT NULL COMMENT '备注',
  `tenant_id` int(11) DEFAULT '0' COMMENT '租户id',
  `config_code` varchar(64) NOT NULL COMMENT '系统类型编码',
  `create_by` varchar(32) DEFAULT NULL COMMENT '建立人员',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人员',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '建立时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `del_flag` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除标志',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_code` (`code`) USING BTREE,
  UNIQUE KEY `uk_type` (`type`) USING BTREE,
  KEY `idx_config_code` (`config_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='系统参数类型表';


CREATE TABLE `sys_config_value` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `code` varchar(32) NOT NULL COMMENT '编码',
  `type_code` varchar(64) NOT NULL COMMENT '参数类型code',
  `config_key` int(2) unsigned NOT NULL COMMENT '配置key(用于页面展示)',
  `redis_key` varchar(255) NOT NULL COMMENT '缓存的key',
  `value` text NOT NULL COMMENT '自定义配置值(用于页面展示)',
  `key_sort` int(4) unsigned DEFAULT '1' COMMENT 'key排序',
  `is_enable` tinyint(1) unsigned DEFAULT '1' COMMENT '是否启用:0否1是',
  `note` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '备注',
  `tenant_id` int(11) DEFAULT '0' COMMENT '租户id',
  `create_by` varchar(32) DEFAULT NULL COMMENT '建立人员',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人员',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '建立时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除标志',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE,
  UNIQUE KEY `uk_code` (`code`) USING BTREE,
  UNIQUE KEY `uk_redis_key` (`redis_key`) USING BTREE,
  UNIQUE KEY `uk_type_code_key` (`type_code`,`config_key`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='系统参数值表';