<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://displaytag.sf.net/el" prefix="display"%>
<%@ taglib uri="/tags/fmt" prefix="fmt"%>
<%
   String path = request.getContextPath();
   String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>家教平台后台管理系统</title>
<LINK href="<%=path%>/theme/login2.css" type="text/css" rel="stylesheet">
<LINK href="<%=path%>/js/jquery/plugin/jquery-easyui/themes/default/easyui.css" type="text/css" rel="stylesheet">
<LINK href="<%=path%>/js/jquery/plugin/jquery-easyui/themes/icon.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="<%=path%>/js/jquery/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/xiehui.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery/plugin/jquery-easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery/plugin/jquery-easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery/plugin/jquery-easyui/plugins/jquery.window.js"></script>
<script type="text/javascript" src="<%=path%>/js/calendar/WdatePicker.js"></script>
<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
	 <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
	 <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>

<style>
   html { overflow-x: hidden; overflow-y: auto; }
</style>


 <script language="javascript">
	 function check1()
	 {                                                                                         
	     if(document.ThisForm.userName.value=="")
		 {
		 	alert("请输入用户名");
			document.ThisForm.userName.focus();
			return false;
		 }
		 if(document.ThisForm.userPw.value=="")
		 {
		 	alert("请输入密码");
			document.ThisForm.userPw.focus();
			return false;
		 }
		 
		 
		 document.getElementById("indicator").style.display="block";
		 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,'1111',0,callback);
	 }
	
	 function callback(data)
	 {
	    document.getElementById("indicator").style.display="none";
	    if(data=="no")
	    {
	        alert("用户名或密码错误");
	    }
	    if(data=="yes")
	    {
	        alert("通过验证,系统登录成功");
	        window.location.href="<%=path %>/loginSuccess.jsp";
	    }
	    if(data=="codeerror")
	    {
	        alert("验证码错误");
	    }
	    
	 }
	 </script>
</head>
<body>
 
 
<h1>家教平台后台管理系统</h1>
<FORM action="<%=path %>/admin/index.jsp" name="ThisForm" method="post">
<input type="hidden" id="messageInfo" value="${requestScope.messageInfo}" />
<div>
<div class="login" style="margin-top:50px;">
    <div class="web_qr_login" id="web_qr_login" style="display: block; height: 235px;">    

            <!--登录-->
            <div class="web_login" id="web_login">
               
               
               <div class="login-box">
    
            
			<div class="login_form">
 
                <div class="uinArea" id="uinArea">
                <label class="input-tips" for="u">用户名：</label>
                <div class="inputOuter" id="uArea">
                    
                    <input type="text" name="userName" id="userName" class="inputstyle"/>
                </div>
                </div>
                <div class="pwdArea" id="pwdArea">
               <label class="input-tips" for="p">密码：</label> 
               <div class="inputOuter" id="pArea">
                    
                    <input type="password" name="userPw" id="userPw" class="inputstyle"/>
                </div>
                </div>
               
                <div style="padding-left:50px;margin-top:20px;"><input type="button" onClick="check1()" value="登 录" style="width:150px;" class="button_blue"/>
                
                <img id="indicator" src="<%=path %>/images/loading.gif" style="display:none"/>
                </div>
              </form>
 
            <!--登录end-->
 
</body>
 
</html>
 