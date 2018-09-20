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
	public void sendToNext(long id, String accountName, String money) {
		String jobHandler = "ReceiveDHandler";
		String params = "?money="+money+"&accountName="+accountName+"&id="+id;

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
        ExecutorBiz executorBiz = null;
		try {
			executorBiz = (ExecutorBiz) new NetComClientProxy(ExecutorBiz.class, "127.0.0.1:9995", null).getObject();
		} catch (Exception e) {
			e.printStackTrace();
		}
        executorBiz.run(triggerParam);
	}

	@Override
	public void executeSendToNextJob() {
		String address = "http://9.186.54.96:9060/".concat(AdminBiz.MAPPING);
    	try {
			AdminBiz adminBiz = (AdminBiz) new NetComClientProxy(AdminBiz.class, address, null).getObject();
			adminBiz.triggerJob(19);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void finishToPre(long id, String accountName, String money) {
		String jobHandler = "ReceiveStatusBHandler";
		String params = "?money="+money+"&accountName="+accountName+"&id="+id;
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
        ExecutorBiz executorBiz;
		try {
			executorBiz = (ExecutorBiz) new NetComClientProxy(ExecutorBiz.class, "127.0.0.1:9995", null).getObject();
			executorBiz.run(triggerParam);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void executeFinishToPreJob() {
		String address = "http://9.186.54.96:9060/".concat(AdminBiz.MAPPING);
    	try {
			AdminBiz adminBiz = (AdminBiz) new NetComClientProxy(AdminBiz.class, address, null).getObject();
			adminBiz.triggerJob(15);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
