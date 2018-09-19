//package com.xxl.tx.e.handler;
//
//import java.util.Iterator;
//
//import org.springframework.stereotype.Component;
//
//import com.xxl.job.core.biz.model.ReturnT;
//import com.xxl.job.core.handler.IJobHandler;
//import com.xxl.job.core.handler.annotation.JobHandler;
//import com.xxl.job.core.log.XxlJobLogger;
//import com.xxl.tx.pojo.ReceivePO;
//import com.xxl.tx.util.HttpClientUtils;
//
///**
// * 任务Handler示例（Bean模式）
// *
// * 开发步骤： 1、继承"IJobHandler"：“com.xxl.job.core.handler.IJobHandler”；
// * 2、注册到Spring容器：添加“@Component”注解，被Spring容器扫描为Bean实例；
// * 3、注册到执行器工厂：添加“@JobHandler(value="自定义jobhandler名称")”注解，注解value值对应的是调度中心新建任务的JobHandler属性的值。
// * 4、执行日志：需要通过 "XxlJobLogger.log" 打印执行日志；
// *
// * @author xuxueli 2015-12-19 19:43:36
// */
///**
// * 此类为执行类
// */
//@JobHandler(value = "ExecuteStatusEJobHandler")
//@Component
//public class ExecuteStatusEJobHandler extends IJobHandler {
//
//	@Override
//	public ReturnT<String> execute(String param) throws Exception {
//		Iterator<ReceivePO> iterator = ReceiveEHandler.dataCache.iterator();
//		while (iterator.hasNext()) {
//			ReceivePO receivePO = iterator.next();
//			if (receivePO.isFinish()) {
//				continue;
//			} else {
//				XxlJobLogger.log("开始执行任务" + receivePO.getData());
//				// TODO 项目B的地址
//				String url = "http://localhost:8095/xqx-job5/accounts/finish" + receivePO.getData();
//				HttpClientUtils client = HttpClientUtils.getInstance();
//				String resp = client.sendHttpGet(url);
//				if ("success".equals(resp)) {
//					receivePO.setFinish(true);
//				} else {
//					receivePO.setFinish(false);
//				}
//			}
//		}
//		return SUCCESS;
//	}
//}
