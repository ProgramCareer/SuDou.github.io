<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body>
       <script type="text/javascript">
           function tiao()
           {
           
              <c:if test="${sessionScope.userType==0}">  
                   window.location.href="<%=path %>/admin/index.jsp";
               </c:if>
                <c:if test="${sessionScope.userType==1}">  
                   window.location.href="<%=path %>/atea/index.jsp";
               </c:if>
               <c:if test="${sessionScope.userType==2}">  
                   window.location.href="<%=path %>/astu/index.jsp";
               </c:if>
           }
           
           setTimeout(tiao,1300)
       </script>
       <br> <br> <br> <br> <br> <br> <br> <br> <br>
       <center><img src="<%=path %>/images/loading32.gif">页面跳转中...</center>
  </body>
</html>
