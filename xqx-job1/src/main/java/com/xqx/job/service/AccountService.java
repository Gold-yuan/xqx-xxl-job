package com.xqx.job.service;

public interface AccountService {

	/**
	 * 发起B转账给C的job
	 * 
	 * @param id          流水
	 * @param accountName 账户名称
	 * @param money       转钱数
	 */
	void sendToNext(long id, String accountName, String money);

	/**
	 * 立即执行该job
	 */
	void executeSendToNextJob();
}
