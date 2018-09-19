package com.xxl.tx;

import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

import com.ctrip.framework.apollo.spring.annotation.EnableApolloConfig;

@SpringCloudApplication
@EnableDiscoveryClient // Eureka客户端
@EnableApolloConfig
//@ComponentScan(basePackages = "com.xqx")
public class ClientHandlerApplication {

	public static void main(String[] args) {
        SpringApplication.run(ClientHandlerApplication.class, args);
	}

}