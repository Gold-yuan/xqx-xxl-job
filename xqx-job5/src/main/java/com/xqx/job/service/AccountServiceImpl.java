package com.xqx.job.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.xqx.job.conf.XxlJobConfig;
import com.xxl.job.core.biz.AdminBiz;
import com.xxl.job.core.biz.ExecutorBiz;
import com.xxl.job.core.biz.model.TriggerParam;
import com.xxl.job.core.enums.ExecutorBlockStrategyEnum;
import com.xxl.job.core.glue.GlueTypeEnum;
import com.xxl.job.core.rpc.netcom.NetComClientProxy;

@Service
public class AccountServiceImpl implements AccountService{
	@Autowired 
	XxlJobConfig config;
	@Override
	public void finishToPre(long id, String accountName, String money) {
		String jobHandler = "ReceiveEtoDStatusHandler";
		Gson gson = new GsonBuilder().enableComplexMapKeySerialization().create();
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("id", id);
		map.put("money",money);
		map.put("accountName",accountName);
		String  params= gson.toJson(map);
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
			executorBiz = (ExecutorBiz) new NetComClientProxy(ExecutorBiz.class, config.getHandlerAddresses(), null).getObject();
			executorBiz.run(triggerParam);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void executeFinishToPreJob() {
		String address = config.getAdminAddresses().concat(AdminBiz.MAPPING);
    	try {
			AdminBiz adminBiz = (AdminBiz) new NetComClientProxy(AdminBiz.class, address, null).getObject();
			adminBiz.triggerJob(17);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
