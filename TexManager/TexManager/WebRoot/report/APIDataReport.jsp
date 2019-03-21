<%@page import="cn.itcast.report.domain.ReportType"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	
	//获取当前年份
	Calendar cal = Calendar.getInstance();
	int curYear = cal.get(Calendar.YEAR);//当前年份
	request.setAttribute("curYear", curYear);
	
	List yearList = new ArrayList();
	for(int i = curYear; i > curYear-5 ; i--){
		yearList.add(i);
	}
	request.setAttribute("yearList", yearList);
	
	//获取图表类型
	 List chartsList =new ArrayList();
	 chartsList.add("column3d");
	 chartsList.add("line");
	 chartsList.add("pie3d");
	 System.out.println(chartsList.size());
	/*for(int i=0;i<ReportType.get().length();i++){
	} */
	request.setAttribute("curChart", chartsList.get(0));
	request.setAttribute("chartsList", chartsList);
	
	request.getAttribute("reportServiceData");
	
%>

<!DOCTYPE HTML>
<html>
  <head>
    <%@include file="/common/header.jsp"%>
    <title>业务统计图</title>
  </head>
  <script type="text/javascript" src="${basePath }js/fusioncharts/fusioncharts.js"></script>
  <script type="text/javascript" src="${basePath }js/fusioncharts/fusioncharts.charts.js"></script>
  <script type="text/javascript" src="${basePath }js/fusioncharts/themes/fusioncharts.theme.fint.js"></script>
  <script type="text/javascript">
  
  //加载完dom元素后，执行
  $(document).ready(doAnnualStatistic());
  

  //根据年份统计投诉数
  function doAnnualStatistic(){
	  
	  //获取图表类型
	  var type = $("#type option:selected").val();
	  
	  
	  if(type == "" || type == undefined){
		  type = "${curChart}";//默认第一个图表
	  }
	  //2、根据年份统计
	  $.ajax({
		  /* url:"${basePath }/report/reportservice_getReportServiceData.action", */
		  //这是取得数据的接口    120.76.63.59
		  url:"http://47.94.195.37:8080/BankLeader/getContextTimes",
		  /* data:{}, */
		  type: "post",
		  dataType:"json",
		  //jsonp:"callback", 
		  callbackParameter:"callback",
		  crossDomain: true,
		  success: function(data){
			  if(data != null && data != "" && data != undefined){
			     /*  var obj =JSON.parse(data.data);
			      console.log(obj); */
			      
			      console.log(data.data);
			    
				  var revenueChart = new FusionCharts({
				        "type": type,  //column3d,line,pie3d,pareto3d
				        "renderAt": "chartContainer",
				        "width": "600",
				        "height": "400",
				        "dataFormat": "json",
				        "dataSource":  {
				          "chart": {
				            "caption": " 业务服务次数统计图",
				            "xAxisName": "类 型",
				            "yAxisName": "服 务 次  数",
				            "theme": "fint"
				         },
				         "data": data.data
				        
				      }

				  });
				revenueChart.render();
			  } else {
				   alert("统计投诉数失败！"); 
			  }
		  },
		   error: function(){alert("统计投诉数失败！");} 
	  });
	  
  }
 
  </script>
  <body>
  	<br>
  	<!-- <div style="text-align:center;width:100%;">图表类型：<select id="type"  onchange="doAnnualStatistic()"> -->
  		
  	</select></div>
  	 <div style="text-align:center;width:100%;">图表类型：<s:select id="type" list="#request.chartsList" onchange="doAnnualStatistic()"></s:select></div>
  	 <br>
  	<%--  <div style="text-align:center;width:100%;">年 份：<s:select id="year" list="#request.yearList" onchange="doAnnualStatistic()"></s:select></div>   --%>
  <%-- 	<div style="float:left;width:100%;text-align:center;"><s:select id="type" list="#request.chartsList" onchange="doAnnualStatistic()"></s:select></div>
  	<div style="width:100%;text-align:center;"><s:select id="year" list="#request.yearList" onchange="doAnnualStatistic()"></s:select></div> --%>
    
    
    <br>
    <div id="chartContainer" style="text-align:center;width:100%;"></div>
  </body>
</html>
