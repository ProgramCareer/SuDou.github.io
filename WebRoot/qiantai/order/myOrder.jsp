<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
				<link rel="stylesheet" type="text/css"
			href="<%=path%>/qiantai/css/style.css" />
			
			 
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/qiantai/css/shopping-mall-index.css" />
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
		<script type="text/javascript">
        function orderDel(orderId)
        {
            var url="<%=path %>/yuyueDelQian.action?id="+orderId;
            window.location.href=url;
        }
        
        function tiwen(tid)
        {
            var url="<%=path %>/totiwenQian.action?tid="+tid;
            window.location.href=url;
        }
    </script>
    
    
    <style type="text/css">
    
     /*页面留白*/
  .blank{height:8px; line-height:8px; clear:both; visibility:hidden;}
  .blank5{height:5px; line-height:5px;/* _margin:-3px 0;e c m o b a n*/ clear:both; visibility:hidden;}
  /*布局*/
  .AreaL{width:205px; float:left;overflow:hidden}
  .AreaR{width:980px; float:right; overflow:hidden}
  
  .AreaL h3{ }
.AreaL h3 span{  }
    /*用户中心*/
.userMenu a.curs{color: #5715C9;}
.userCenterBox{
	height:auto;
	border: 1px solid #ddd;
	border-top: 2px solid #999;
	background: #F7F7F7;
	overflow:hidden;
}
.tit_center{
border-bottom: 1px solid #ddd;
height: 40px;
line-height: 40px;
font-size: 16px;
font-weight: bold;
padding-left: 15px;
color: #000;	
}
.userMenu a{
	display:block;
	height: 40px;
	line-height: 40px;
	font-size: 14px;
	border-bottom: 1px solid #ddd;
	color:#444;
}
.userMenu a img{
	margin-left:10px;
	margin-right:3px;
}
.box_right{
	height:492px;
	border: 1px solid #ddd;
	border-top: 2px solid #999;
	background: #F7F7F7;
	overflow:hidden;	
}
.my_center{
	display:block;
	width:100%;
	font-size:14px;
	color:#444;
	height:30px;
	line-height:30px;
	padding:5px 0;
	border-bottom:1px dotted #999;
	text-align:left;
	font-size:20px;
	 margin-bottom:10px;
}
    
    
    </style>
	</head>

	<body>
		<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>
		
	

  <!--内容开始-->
    <div class="personal w1200">
    	<div class="personal-left f-l">
        	<div class="personal-l-tit">
            	<h3>个人中心</h3>
            </div>
            <ul>
            	 
            	<li class="per-li2"><a href="<%=path %>/qiantai/userinfo/userXinxi.jsp">个人资料<span>></span></a></li>
            	<li class="current-li  per-li3"><a href="<%=path%>/yuyueMe.action">我的预约<span>></span></a></li>
             
            	<li class="per-li10"><a href="<%=path%>/userLogout.action">退出登录<span>></span></a></li>
            </ul>
        </div>
    	<div class="management f-r">
            
            <div class="man-info" style="margin-top:0px;">
            
            <div class="tanchuang-con">
                <div class="tc-title">
                    <h3>我的预约</h3>
                </div>
                <div class="man-if-con">
                	  <table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
          <tbody>	
          <tr align="center">
						<td bgcolor="#ffffff">
							预约编号
						</td>
						<td bgcolor="#ffffff">
							下单时间
						</td>
						<td bgcolor="#ffffff">
							家教姓名
						</td>
						<td bgcolor="#ffffff">
							联系电话
						</td>
						 <td bgcolor="#ffffff">
							操作
						</td>
					</tr>


             <c:forEach items="${requestScope.yuyueList}" var="yuyue">
					<tr align="center">
						<td bgcolor="#ffffff">
							${yuyue.id}
						</td>
						<td bgcolor="#ffffff">
							${yuyue.xdsj}
						</td>
						<td bgcolor="#ffffff">
							${yuyue.tname}
						</td>
						<td bgcolor="#ffffff">
							${yuyue.tel}
						</td>
						 
						<td bgcolor="#ffffff">
							 <a  style="cursor: pointer;" onclick="orderDel('${yuyue.id}')">删除</a>
							 <a  style="cursor: pointer;" onclick="tiwen('${yuyue.tid}')">我要提问</a>
							 
						</td>
					</tr>

</c:forEach>
          
                    </tbody></table>
                </div>
                 </div>
            </div>
        </div>
        <div style="clear:both;"></div>
    </div>
























 

		<div class="blank"></div> 
		
		<jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
	  
	</body>
</html>
