package com.xxl.tx.b.handler;

import java.util.List;

import org.springframework.stereotype.Component;

import com.xxl.job.core.biz.model.ReturnT;
import com.xxl.job.core.handler.IJobHandler;
import com.xxl.job.core.handler.annotation.JobHandler;
import com.xxl.job.core.log.XxlJobLogger;
import com.xxl.tx.pojo.ReceivePO;
import com.xxl.tx.util.HttpClientUtils;

@JobHandler(value = "ExecuteBJobHandler")
@Component
public class ExecuteBJobHandler extends IJobHandler {

	@Override
	public ReturnT<String> execute(String param) throws Exception {
		List<ReceivePO> iterator = ReceiveBHandler.dataCache;
		ReceivePO receivePO = null;
		for (int i = 0; i < iterator.size(); i++){
			receivePO = iterator.get(iterator.size()-1);
		}
		if (receivePO != null) {
			XxlJobLogger.log("开始执行任务" + receivePO.getData());
			// TODO 项目B的地址
			String url = "http://localhost:8092/accounts/transfer" + receivePO.getData();
			HttpClientUtils client = HttpClientUtils.getInstance();
			String resp = client.sendHttpGet(url);
			if ("success".equals(resp)) {
				receivePO.setFinish(true);
			} else {
				receivePO.setFinish(false);
			}
		}
		return SUCCESS;
	}
}

