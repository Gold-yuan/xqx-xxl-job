package com.xxl.tx.comtroller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.xxl.tx.a.handler.ReceiveBtoAStatusHandler;
import com.xxl.tx.b.handler.ReceiveAtoBHandler;
import com.xxl.tx.b.handler.ReceiveCtoBStatusHandler;
import com.xxl.tx.c.handler.ReceiveBtoCHandler;
import com.xxl.tx.c.handler.ReceiveDtoCStatusHandler;
import com.xxl.tx.d.handler.ReceiveCtoDHandler;
import com.xxl.tx.d.handler.ReceiveEtoDStatusHandler;
import com.xxl.tx.e.handler.ReceiveDtoEHandler;

@RestController
public class AccountCacheController {
	private static final Logger logger = LoggerFactory.getLogger(AccountCacheController.class);

	@RequestMapping(value = "/cache/clear")
	public String transferA2A() {
		logger.info("清理缓存");
		ReceiveBtoAStatusHandler.dataCache.clear();
		//ReceiveAHandler.dataCache.clear();
		ReceiveCtoBStatusHandler.dataCache.clear();
		ReceiveAtoBHandler.dataCache.clear();
		ReceiveDtoCStatusHandler.dataCache.clear();
		ReceiveBtoCHandler.dataCache.clear();
		ReceiveEtoDStatusHandler.dataCache.clear();
		ReceiveCtoDHandler.dataCache.clear();
		ReceiveDtoEHandler.dataCache.clear();

		return "ok";
	}

}
