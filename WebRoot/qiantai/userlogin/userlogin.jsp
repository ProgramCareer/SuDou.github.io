<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	    <base target="_self"/>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
				<link rel="stylesheet" type="text/css"
			href="<%=path%>/qiantai/css/style.css" />
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/qiantai/css/shopping-mall-index.css" />
		<script type="text/javascript" src="<%=path%>/qiantai/js/jquery.js"></script>
		<script type="text/javascript" src="<%=path%>/qiantai/js/zhonglin.js"></script>
		<script type="text/javascript">
	        
	        function login()
	        {
	           var userName = $('#userName').val();
	           var userPw = $('#userPw').val();
	           if(userName=="")
	           {
	               alert("请输入用户名");
	               return;
	           }
	           if(userPw=="")
	           {
	               alert("请输入密码");
	               return;
	           }
	           document.userLogin.submit();
	        }
	        
	</script>
	</head>
	<body>
				<div class="sign-logo w1200">
	<h1><a href="#" title="家教平台"><img src="<%=path%>/qiantai/images/logo.jpg" /></a></h1>
</div>

	<div class="sign-con w120">
	<img src="<%=path%>/qiantai/images/logn-tu.gif" class="sign-contu f-l" />
	
	<form action="<%=path %>/userLogin.action" name="userLogin" method="post">
    <div class="sign-ipt f-l">
    	<p>用户名</p>
        <input type="text" name="userName" id="userName"  placeholder="用户名" />
        <p>密码</p>
        <input type="password" placeholder="密码" id="userPw"  name="userPw"/><br />
        <input type="button"  onclick="login()" value="登录" class="slig-btn"/> <font color="red"><s:property value="#request.error"/></font>
        <p>没有账号？请<a href="<%=path%>/qiantai/userinfo/userReg.jsp">注册</a> </p>
         
    </div>
    </form>
    <div style="clear:both;"></div>
</div>
    <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
	</body>
</html>
