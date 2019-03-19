<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
			String tid = request.getParameter("tid");
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
            	 
            	<li class="current-li per-li2"><a href="<%=path %>/qiantai/userinfo/userXinxi.jsp">个人资料<span>></span></a></li>
            	<li class="current-li  per-li3"><a href="<%=path%>/yuyueMe.action">我的预约<span>></span></a></li>
            	<li class="per-li10"><a href="<%=path%>/userLogout.action">退出登录<span>></span></a></li>
            </ul>
        </div>
   
    	<div class="personal-r f-r">
        	<div class="personal-right">
                <div class="personal-r-tit">
                    <h3>在线提问</h3>
                </div>
                <div class="data-con">
                	
                     
                     
                     
                     
                      <c:forEach items="${requestScope.tiwenList}" var="tiwen">
	     <TABLE style="MARGIN-TOP: 8px; WORD-BREAK: break-all" borderColor=#e3e3e3 cellSpacing=0 borderColorDark=white cellPadding=0 rules=all width="100%"  borderColorLight=#e0e0e0 border=1>
	        <TR bgColor=#f0f0f0 height=30>
		          
		          <TD colSpan=2 style="font-size: 11px;">
		                <span style="float:left">【标题】${tiwen.title} </span>
		                <span style="float:right">${tiwen.twsj }&nbsp;&nbsp;&nbsp;&nbsp;
	                            
		                </span>
		          </TD>
	        </TR>
	       
	        <TR height=20>
		          <TD style="PADDING-RIGHT: 6px; PADDING-LEFT: 6px; PADDING-BOTTOM: 6px; PADDING-TOP: 6px" vAlign=top style="font-size: 11px;">
		               ${tiwen.contents }
		          </TD>
	        </TR>
	         <TR height=20>
		          <TD style="PADDING-RIGHT: 6px; PADDING-LEFT: 6px; PADDING-BOTTOM: 6px; PADDING-TOP: 6px" vAlign=top style="font-size: 11px;">
		             家教回复： ${tiwen.replays}
		          </TD>
		          
	        </TR>
	    </TABLE>
	    </c:forEach>
	    
	    
	    <c:if test="${sessionScope.user!=null}">
	    <TABLE style="MARGIN-TOP: 8px; WORD-BREAK: break-all" borderColor=#e3e3e3 cellSpacing=0 borderColorDark=white cellPadding=0 rules=all width="100%"  borderColorLight=#e0e0e0 border=1>
	        <TR bgColor=#f0f0f0 height=30>
		          
		          <TD colSpan=2 style="font-size: 11px;">
		                <span style="float:left">在线提问</span>
		          </TD>
	        </TR>
	       
	        <TR height=20>
		          <TD>
			            <form action="<%=path %>/tiwenAdd.action" name="form1" method="post">
			             <input type="hidden" name="tid" value="${tid}"/>
               
                     
                     
			            <table border="0">
						     <tr>
						         <td style="font-size: 11px;">标题:</td>
						         <td><input type="text" name="title" size="50"/></td>
						     </tr>
						     <tr>
						         <td style="font-size: 11px;">内容:</td>
						         <td>
						         
						             <textarea rows="15" cols="80" name="contents"></textarea>
						               
				                 </td>
						     </tr>
						     <tr>
						         <td style="font-size: 11px;">&nbsp;</td>
						         <td>
						             <input type="submit" name="" value="提交"/>
				                 </td>
						     </tr>
						</table>
						</form>
		          </TD>
	        </TR>
	    </TABLE>
	    </c:if>
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                </div>
            </div>
            
            </div>
        </div>
        <div style="clear:both;"></div>
 























 

		<div class="blank"></div> 
		
		<jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
	  
	</body>
</html>
