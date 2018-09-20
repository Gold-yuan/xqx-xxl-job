package com.xxl.tx.d.handler;

import java.util.Iterator;

import org.springframework.stereotype.Component;

import com.xxl.job.core.biz.model.ReturnT;
import com.xxl.job.core.handler.IJobHandler;
import com.xxl.job.core.handler.annotation.JobHandler;
import com.xxl.job.core.log.XxlJobLogger;
import com.xxl.tx.pojo.ReceivePO;
import com.xxl.tx.util.HttpClientUtils;

@JobHandler(value = "ExecuteStatusDHandler")
@Component
public class ExecuteStatusDHandler extends IJobHandler{
	@Override
	public ReturnT<String> execute(String param) throws Exception {
		Iterator<ReceivePO> iterator = ReceiveStatusDHandler.dataCache.iterator();
		if(iterator.hasNext()) {
			ReceivePO receivePO = iterator.next();
			if (!receivePO.isFinish()) {
				XxlJobLogger.log("开始执行任务" + receivePO.getData());
				// TODO 项目B的地址
				String url = "http://localhost:8094/accounts/finish" + receivePO.getData();
				HttpClientUtils client = HttpClientUtils.getInstance();
				String resp = client.sendHttpGet(url);
				if ("success".equals(resp)) {
					receivePO.setFinish(true);
				} else {
					receivePO.setFinish(false);
				}
			} else {
			}
		}
		return SUCCESS;
	}
}