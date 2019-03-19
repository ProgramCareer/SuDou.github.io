<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 
  <body>
		<footer>
			 <!--底部服务-->
			<div class="ft-service">
				 
			</div>
			
					<!--底部 版权-->
					
					<div class="footer w1200">
						<p>
							<a href="#">关于我们</a><span>|</span>
							<a href="#">友情链接</a><span>|</span>
							<a href="#">家教平台社区</a><span>|</span>
							<a href="#">诚征英才</a><span>|</span>
							<a href="#">热门搜索</a><span>|</span>
			
							<a target="_blank" href="<%=path%>/admin/login.jsp">后台管理</a>
						</p>
						<p>
							沪ICP备13044668号
							<span>|</span>合字B1.B2-20170004
							<span>|</span>营业执照
							<span>|</span>互联网信息服务资格证
							<span>|</span>互联网交易服务资格证
						</p>
					</div>
		</footer>
  </body>
</html>
