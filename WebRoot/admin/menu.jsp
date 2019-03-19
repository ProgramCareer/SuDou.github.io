<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path;
	String applicationPath = basePath + "/" + "application";
%>
<HTML>
	<HEAD>
		<META http-equiv=Content-Type content="text/html; charset=UTF-8">
		<LINK href="theme/admin.css" type="text/css" rel="stylesheet">
		<SCRIPT language=javascript>
	function expand(el)
	{
		childObj = document.getElementById("child" + el);

		if (childObj.style.display == 'none')
		{
			childObj.style.display = 'block';
		}
		else
		{
			childObj.style.display = 'none';
		}
		return;
	}
</SCRIPT>
	</HEAD>
	<BODY>
		<TABLE height="100%" cellSpacing=0 cellPadding=0 width=200
			background=images/menu_left.jpg border=0>
			<TR>
				<TD vAlign=top align=middle>
					<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>

						<TR>
							<TD height=10></TD>
						</TR>
					</TABLE>
					
					
					<c:if test="${sessionScope.userType==0}">
					<TABLE cellSpacing=0 cellPadding=0 width=200 border=0>

						<TR height=39>
							<TD style="PADDING-LEFT: 50px" background=images/menu_icogq.png>
								<A class=menuParent onclick=expand(1) href="javascript:void(0);">管理员维护</A>
							</TD>
						</TR>
						
					</TABLE>
					
					
					<TABLE id=child1 style="DISPLAY: none;" cellSpacing=0 cellPadding=0
						width=150 border=0>
						
						 
						<TR height=20>
							<TD align=middle width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="<%=path %>/adminManage.action" target=main>管理员维护</A>
							</TD>
						</TR>
						
						<TR height=20>
							<TD align=middle width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="<%=path %>/admin/index/adminAdd.jsp" target=main>管理员添加</A>
							</TD>
						</TR>
					 
						<TR height=20>
							<TD align=middle width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="<%=path %>/admin/index/userinfo.jsp" target=main>密码修改</A>
							</TD>
						</TR>
						<TR height=4>
							<TD colSpan=2></TD>
						</TR>
					</TABLE>
					
						
		 	
					<TABLE cellSpacing=0 cellPadding=0 width=200 border=0>

						<TR height=39>
							<TD style="PADDING-LEFT: 50px" background=images/menu_icojq.png>
								<A class=menuParent onclick=expand(2) href="javascript:void(0);">家教信息管理</A>
							</TD>
						</TR>
						
					</TABLE>
					<TABLE id=child2 style="DISPLAY: none;" cellSpacing=0 cellPadding=0
						width=150 border=0>
						<TR height=20>
							<TD align=middle width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="<%=path %>/teacherMana.action" target=main>家教信息管理</A>
							</TD>
						</TR>
					
						
					
						
						<TR height=12>
							<TD colSpan=2></TD>
						</TR>
					</TABLE>
				 
					
					 
					<TABLE cellSpacing=0 cellPadding=0 width=200 border=0>

						<TR height=39>
							<TD style="PADDING-LEFT: 50px" background=images/menu_icosq.png>
								<A class=menuParent onclick=expand(3) href="javascript:void(0);">学生信息管理</A>
							</TD>
						</TR>
						
					</TABLE>
					<TABLE id=child3 style="DISPLAY: none;" cellSpacing=0 cellPadding=0
						width=150 border=0>
						<TR height=20>
							<TD align=middle width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="<%=path %>/userMana.action" target=main>学生信息管理</A>
							</TD>
						</TR>
						
						 
			 
						<TR height=12>
							<TD colSpan=2></TD>
						</TR>
					</TABLE>
					 
					 
					 <TABLE cellSpacing=0 cellPadding=0 width=200 border=0>

						<TR height=39>
							<TD style="PADDING-LEFT: 50px" background=images/menu_icolq.png>
								<A class=menuParent onclick=expand(4) href="javascript:void(0);">留言管理</A>
							</TD>
						</TR>
						
					</TABLE>
					<TABLE id=child4 style="DISPLAY: none;" cellSpacing=0 cellPadding=0
						width=150 border=0>
						<TR height=20>
							<TD align=middle width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="<%=path %>/liuyanMana.action" target=main>留言管理</A>
							</TD>
						</TR>
						<TR height=12>
							<TD colSpan=2></TD>
						</TR>
					</TABLE>
					
					
					<TABLE cellSpacing=0 cellPadding=0 width=200 border=0>

						<TR height=39>
							<TD style="PADDING-LEFT: 50px" background=images/menu_icogqq.png>
								<A class=menuParent onclick=expand(5) href="javascript:void(0);">公告管理</A>
							</TD>
						</TR>
						
					</TABLE>
					<TABLE id=child5 style="DISPLAY: none;" cellSpacing=0 cellPadding=0
						width=150 border=0>
						<TR height=20>
							<TD align=middle width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="<%=path %>/gonggaoMana.action" target=main>公告管理</A>
							</TD>
						</TR>
						<TR height=12>
							<TD colSpan=2></TD>
						</TR>
					</TABLE>
					
					
					 </c:if>
					 
					 
					 <c:if test="${sessionScope.userType==1}">
					 	<TABLE cellSpacing=0 cellPadding=0 width=200 border=0>

						<TR height=39>
							<TD style="PADDING-LEFT: 50px" background=images/menu_icozq.png>
								<A class=menuParent onclick=expand(6) href="javascript:void(0);">个人资料管理</A>
							</TD>
						</TR>
						
					</TABLE>
					<TABLE id=child6 style="DISPLAY: none;" cellSpacing=0 cellPadding=0
						width=150 border=0>
						<TR height=20>
							<TD align=middle width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>                    
								<A class=menuChild href="<%=path %>/admin/user/userInfo.jsp" target=main>个人基本信息</A>
							</TD>
						</TR>
					
						<TR height=20>
							<TD align=middle width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="<%=path %>/toPublicInfo.action" target=main>家教信息发布</A>
							</TD>
						</TR>
					
						
						<TR height=12>
							<TD colSpan=2></TD>
						</TR>
					</TABLE>
					
					
					
					<TABLE cellSpacing=0 cellPadding=0 width=200 border=0>

						<TR height=39>
							<TD style="PADDING-LEFT: 50px" background=images/menu_icowq.png>
								<A class=menuParent onclick=expand(7) href="javascript:void(0);">提问信息管理</A>
							</TD>
						</TR>
						
					</TABLE>
					<TABLE id=child7 style="DISPLAY: none;" cellSpacing=0 cellPadding=0
						width=150 border=0>
						<TR height=20>
							<TD align=middle width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="<%=path %>/tiwenMana.action" target=main>提问信息管理</A>
							</TD>
						</TR>
						
						 
						
						<TR height=12>
							<TD colSpan=2></TD>
						</TR>
					</TABLE>
					
					
					
					
						<TABLE cellSpacing=0 cellPadding=0 width=200 border=0>

						<TR height=39>
							<TD style="PADDING-LEFT: 50px" background=images/menu_icoyq.png>
								<A class=menuParent onclick=expand(8) href="javascript:void(0);">预约管理</A>
							</TD>
						</TR>
						
					</TABLE>
					<TABLE id=child8 style="DISPLAY: none;" cellSpacing=0 cellPadding=0
						width=150 border=0>
						<TR height=20>
							<TD align=middle width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="<%=path %>/yuyueMana.action" target=main>预约管理</A>
							</TD>
						</TR>
						<TR height=12>
							<TD colSpan=2></TD>
						</TR>
					</TABLE>
					 </c:if>
					
					
					
					<TABLE cellSpacing=0 cellPadding=0 width=200 border=0>

						<TR height=39>
							<TD style="PADDING-LEFT: 50px" background=images/menu_icotq.png>
								<A class=menuParent onclick=expand(9) href="javascript:void(0);">退出系统</A>
							</TD>
						</TR>
						
					</TABLE>
					<TABLE id=child9 style="DISPLAY: none;" cellSpacing=0 cellPadding=0
						width=150 border=0>
						
					    <TR height=20>
							<TD align=middle width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild onclick='javascript:window.parent.location="<%=path %>/userLogout.action"'>退出系统</A>
							</TD>
						</TR>
						
						<TR height=12>
							<TD colSpan=2></TD>
						</TR>
					</TABLE>
					
					
					 
				</TD>
				<TD width=1 bgColor=#3d3d3d></TD>
			</TR>
		</TABLE>
	</BODY>
</HTML>

<script>

 
//退出
function logonOut(){
	 parent.location = '<%=path%>/loginuser!logonOut.action';
	 self.close();
}

</script>
