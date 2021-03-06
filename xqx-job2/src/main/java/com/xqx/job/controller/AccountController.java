package com.xqx.job.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.xqx.job.service.AccountService;

@RestController
public class AccountController {
	private static final Logger logger = LoggerFactory.getLogger(AccountController.class);

	@Autowired
	private AccountService accountService;

	@RequestMapping(value = "/accounts/transfer", method = RequestMethod.GET)
	public String transferA2A(@RequestParam("id") Long id, @RequestParam("money") String money,
			@RequestParam("accountName") String accountName) {
		logger.info("B接收请求：accountName={}, money={}", accountName, money);
		// 我是B只能转给C，让C代转
		// TODO 通知C转账给D
		accountService.sendToNext(id, accountName, money);

		// TODO 立即执行该job
		accountService.executeSendToNextJob();

		return "ok";
	}

	@RequestMapping(value = "/accounts/finish", method = RequestMethod.GET)
	public String finishTransferA2A(@RequestParam("id") Long id, @RequestParam("money") String money,
			@RequestParam("accountName") String accountName) {
		logger.info("B收到C完成转账消息：accountName={}, money={}", accountName, money);
		// TODO 通知A，转账完成
		accountService.finishToPre(id, accountName, money);

		// TODO 立即执行该job
		accountService.executeFinishToPreJob();
		
		return "ok";
	}

}
