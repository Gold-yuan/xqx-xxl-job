package com.xqx.job.conf;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;

/**
 * xxl-job config
 * 
 */
@Configuration
public class XxlJobConfig {

	@Value("${xxl.job.handler.addresses}")
	private String handlerAddresses;

	@Value("${xxl.job.admin.addresses}")
	private String adminAddresses;

	public String getHandlerAddresses() {
		return handlerAddresses;
	}

	public void setHandlerAddresses(String handlerAddresses) {
		this.handlerAddresses = handlerAddresses;
	}

	public String getAdminAddresses() {
		return adminAddresses;
	}

	public void setAdminAddresses(String adminAddresses) {
		this.adminAddresses = adminAddresses;
	}

	
}