package cn.itcast.report.domain;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import antlr.collections.List;

/**
 * 
 * @author 胡涵睿
 * 得到图表的类型
 */

public class ReportType {

//	 static Map<String, String> chartstype =new HashMap<String, String>();
//	 public static Map<String, String> get(){
//		 chartstype.put("column3d", "column3d");
//		 chartstype.put("line", "line");
//		 chartstype.put("pie3d", "pie3d");
//		return chartstype;
//	 }
	static List chartsType =(List) new ArrayList();
	 public static List get(){
		 chartsType.add("column3d");
		 chartsType.add("line");
		 chartsType.add("pie3d");
		return chartsType;
		 
	 }
	 
}
