package com.xqx.job.controller;

import java.util.HashMap;
import java.util.Map;

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
	private static Map<Long, Long> finishTme = new HashMap<>();
	private static long id = 0;
	
	@Autowired
	private AccountService accountService;

	@RequestMapping(value = "/accounts/transfer", method = RequestMethod.GET)
	public String transferA2A(@RequestParam("money") String money, @RequestParam("accountName") String accountName) {
		long currentTimeMillis = System.currentTimeMillis();
		// 我是A只能转给B，让B代转
		// TODO 通知B转账给C
		finishTme.put(id, currentTimeMillis);
		logger.info("A接收请求：accountName={}, money={},startTime={},id={}", accountName, money,currentTimeMillis,id);
		try {
			accountService.sendToNext(id, accountName, money);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// TODO 立即执行该job
		accountService.executeSendToNextJob();
		id++;
		return "ok";
	}

	@RequestMapping(value = "/accounts/finish", method = RequestMethod.GET)
	public String finishTransferA2A(@RequestParam("id") Long id, @RequestParam("money") String money,
			@RequestParam("accountName") String accountName) {

		long now = System.currentTimeMillis();
		long startTransferA2ATime = finishTme.get(id);
		logger.info("A收到B完成转账消息：accountName={}, money={},startTime={},id={}", accountName, money,startTransferA2ATime,id);
		long usedTime = now - startTransferA2ATime;
		logger.info("id={}使用时间：{}ms", id, usedTime);
		
		return "ok";
	}

}
