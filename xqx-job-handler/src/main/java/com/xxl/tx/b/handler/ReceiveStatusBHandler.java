package com.xxl.tx.b.handler;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;

import com.xxl.job.core.biz.model.ReturnT;
import com.xxl.job.core.handler.IJobHandler;
import com.xxl.job.core.handler.annotation.JobHandler;
import com.xxl.job.core.log.XxlJobLogger;
import com.xxl.tx.pojo.ReceivePO;
/**
 * 接收状态
 * @author jjn
 *
 */
@JobHandler(value = "ReceiveStatusBHandler")
@Component
public class ReceiveStatusBHandler extends IJobHandler{
	public static List<ReceivePO> dataCache = new ArrayList<>();
	/**
	 * @param param json格式入参，如：{"status":"success"}
	 */
	@Override
	public ReturnT<String> execute(String param) throws Exception {
		if (StringUtils.isBlank(param)) {
			XxlJobLogger.log("返回值为空，返回");
			return SUCCESS;
		}
		XxlJobLogger.log("已接收到请求：" + param);
		ReceivePO receive = new ReceivePO(param);
		// TODO 改为入库操作
		dataCache.add(receive);

		return SUCCESS;
	}
}