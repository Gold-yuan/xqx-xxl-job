package com.xxl.tx.comtroller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.xxl.tx.b.handler.ReceiveBHandler;
import com.xxl.tx.b.handler.ReceiveStatusBHandler;
import com.xxl.tx.c.handler.ReceiveCHandler;
import com.xxl.tx.c.handler.ReceiveStatusCHandler;
import com.xxl.tx.d.handler.ReceiveDHandler;
import com.xxl.tx.d.handler.ReceiveStatusDHandler;
import com.xxl.tx.e.handler.ReceiveEHandler;
import com.xxl.tx.handler.ReceiveAHandler;
import com.xxl.tx.handler.ReceiveStatusAHandler;

@RestController
public class AccountCacheController {
	private static final Logger logger = LoggerFactory.getLogger(AccountCacheController.class);

	@RequestMapping(value = "/cache/clear")
	public String transferA2A() {
		logger.info("清理缓存");
		ReceiveStatusAHandler.dataCache.clear();
		ReceiveAHandler.dataCache.clear();
		ReceiveStatusBHandler.dataCache.clear();
		ReceiveBHandler.dataCache.clear();
		ReceiveStatusCHandler.dataCache.clear();
		ReceiveCHandler.dataCache.clear();
		ReceiveStatusDHandler.dataCache.clear();
		ReceiveDHandler.dataCache.clear();
		ReceiveEHandler.dataCache.clear();

		return "ok";
	}

}
