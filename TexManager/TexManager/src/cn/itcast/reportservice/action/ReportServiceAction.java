package cn.itcast.reportservice.action;

import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import cn.itcast.core.action.BaseAction;
import cn.itcast.core.util.HttpTest;
/**
 * 
 * 服务器数据的Action
 * @author 胡涵睿
 * @date 2019.1.17
 */
public class ReportServiceAction extends BaseAction {

	@Resource
	private Map<String, Object> reportDataMap;
	
	public String getReportServiceData(){
		//1、获取服务器解析的json数据
		/*HttpServletRequest request = ServletActionContext.getRequest();
		
		if(request.getParameter("type") != null && request.getAttribute("time")!=null){
			//2、获取json数据
			reportDataMap = new HashMap<String, Object>();
			//设置成功的信号
			reportDataMap.put("msg", "success");
			reportDataMap.put("reportServiceData",HttpTest.post());
			System.out.println(reportDataMap.get("reportServiceData"));*/
			return "reportServiceData";
		//}
	}
}
