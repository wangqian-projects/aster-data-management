package com.aster.cloud.data.management;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

/**
 * 数据管理服务
 *
 * @author 王骞
 * @date 2020-10-31
 */
@EnableDiscoveryClient
@SpringBootApplication
public class DataManagementApplication {
    public static void main(String[] args) {
        SpringApplication.run(DataManagementApplication.class, args);
    }
}
