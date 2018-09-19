package com.xqx.job.service;

import org.springframework.stereotype.Service;

import com.xxl.job.core.biz.AdminBiz;
import com.xxl.job.core.biz.ExecutorBiz;
import com.xxl.job.core.biz.model.TriggerParam;
import com.xxl.job.core.enums.ExecutorBlockStrategyEnum;
import com.xxl.job.core.glue.GlueTypeEnum;
import com.xxl.job.core.rpc.netcom.NetComClientProxy;

@Service
public class AccountServiceImpl implements AccountService {

	@Override
	public void sendToNext(long id, String accountName, String money) throws Exception {
		// TODO Auto-generated method stub
		String jobHandler = "ReceivevBHandler";
        String params = money+"-"+accountName;

        // trigger data
        TriggerParam triggerParam = new TriggerParam();
        triggerParam.setExecutorHandler(jobHandler);
        triggerParam.setExecutorParams(params);
        triggerParam.setExecutorBlockStrategy(ExecutorBlockStrategyEnum.COVER_EARLY.name());
        triggerParam.setGlueType(GlueTypeEnum.BEAN.name());
        triggerParam.setGlueSource(null);
        triggerParam.setGlueUpdatetime(System.currentTimeMillis());
        triggerParam.setLogDateTim(System.currentTimeMillis());
        
        // do remote trigger
        ExecutorBiz executorBiz = (ExecutorBiz) new NetComClientProxy(ExecutorBiz.class, "127.0.0.1:9995", null).getObject();
        executorBiz.run(triggerParam);
	}

	@Override
	public void executeSendToNextJob() {
		
		String address = "http://9.186.54.96:9060/";
    	try {
			AdminBiz adminBiz = (AdminBiz) new NetComClientProxy(AdminBiz.class, address, null).getObject();
			adminBiz.triggerJob(6);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
