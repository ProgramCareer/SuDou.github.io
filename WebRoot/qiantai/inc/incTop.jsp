<%@ page language="java" import="java.util.*,com.record.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>家教平台</title>
	<script type="text/javascript" src="<%=path%>/qiantai/js/jquery.js"></script>
		<script type="text/javascript" src="<%=path%>/qiantai/js/zhonglin.js"></script>
      <script type="text/javascript">
	        function myXinxi()
	        {
	             <c:if test="${sessionScope.user==null}">
	                  alert("请先登录");
	            </c:if>
	            
	             <c:if test="${sessionScope.user!=null}">
	                var url="<%=path %>/qiantai/userinfo/userXinxi.jsp";
	                var n="";
	                var w="480px";
	                var h="500px";
	                var s="resizable:no;help:no;status:no;scroll:yes";
				    openWin(url,n,w,h,s);
	            </c:if>
	        }
	        function myCart()
	        {
	            <c:if test="${sessionScope.user==null}">
	                  alert("请先登录");
	            </c:if>
	            
	             <c:if test="${sessionScope.user!=null}">
	                 var s="<%=path %>/myCart.action";
	                 window.location.href=s;
	             </c:if>
	        }
	        
	        function myOrder()
	        {
	           <c:if test="${sessionScope.user==null}">
	                  alert("请先登录");
	            </c:if>
	            
	            <c:if test="${sessionScope.user!=null}">
	                 var s="<%=path %>/myOrder.action";
	                 window.location.href=s;
	            </c:if>
	        }
	        
	        function liuyanAll()
	        {
	           <c:if test="${sessionScope.user==null}">
	                  alert("请先登录");
	            </c:if>
	            
	           <c:if test="${sessionScope.user!=null}">
	                 var url="<%=path %>/liuyanAll.action";
				     window.open(url,"_blank");
	            </c:if>
	        }
      </script>
     
  </head>
  
  <body>
  
 <!--top 开始-->
    <div class="top">
    	<div class="top-con w1200">
        	<p class="t-con-l f-l">您好，欢迎来到家教平台</p>
           <c:if test="${sessionScope.user!=null}">
				<ul class="t-con-r f-r">
            	<li><a href="<%=path %>/qiantai/userinfo/userXinxi.jsp">我 (个人中心)</a></li>
            	<li><a href="<%=path%>/yuyueMe.action">我的预约</a></li>
            	</ul>
            	 </c:if>
            	 
            	<c:if test="${sessionScope.user==null}">
				<ul class="t-con-r f-r">
            	<li><a href="<%=path%>/qiantai/userinfo/userReg.jsp">注册</a></li>
            	<li><a href="<%=path%>/qiantai/userlogin/userlogin.jsp">登录</a></li>
            	 
            	</ul>
            	 </c:if>
            <div style="clear:both;"></div>
        </div>
    </div>
    
    <!--logo search 开始-->
    <div class="hd-info1 w1200">
    	<div class="logo f-l">
        	<h1><a href="#" ><img src="<%=path %>/qiantai/images/logo.jpg" /></a></h1>
        </div>
        <!--  div class="dianji f-r">
        	<div class="btn1">
            	<button class="btn1-l">注册</button>
                <button class="btn1-r">登录</button>
                <div style="clear:both;"></div>
            </div>
            <button class="btn2">商家入口    ></button>
        </div-->
        <div class="search f-r">
      
       
            
        </div>
        
        <div style="clear:both;"></div>
    </div>
    
   
    <!--nav 开始-->
     <div style="border-bottom:2px solid #09c762;">
    	<div class="nav w1200">
    	 
     
        <ul>
        <li>
					<a href="<%=path%>/index.action">首页</a>
				</li>
				<li>
			    	<a href="<%=path%>/listteacher.action">找家教</a>
				</li>
			 
						<li>
					<a href="<%=path%>/gonggaoList.action">网站公告</a>
				</li>
				<li>
					<a href="#" onclick="liuyanAll()" target="_self">在线留言</a>
				</li>
            <div style="clear:both;"></div>
        </ul>
        <div style="clear:both;"></div>
    </div>
    </div>
</html>
