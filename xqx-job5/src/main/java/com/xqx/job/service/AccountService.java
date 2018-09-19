package com.xqx.job.service;

public interface AccountService {

	/**
	 * 通知D转账完成
	 * 
	 * @param id          流水
	 * @param accountName 账户名称
	 * @param money       转钱数
	 */
	void finishToPre(long id, String accountName, String money);

	/**
	 * 立即执行该job
	 */
	void executeFinishToPreJob();
}
