<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		<script type="text/javascript" src="<%=path %>/js/popup.js"></script>
        <script language="javascript">
           function tiwenDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path%>/tiwenDel.action?id="+id;
               }
           }
           
           function tiwenAdd()
           {
                 var url="<%=path %>/admin/tiwen/tiwenAdd.jsp";
                 //var n="";
                 //var w="480px";
                 //var h="500px";
                 //var s="resizable:no;help:no;status:no;scroll:yes";
				 //openWin(url,n,w,h,s);
				 window.location.href=url;
           }		
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="6" background="<%=path %>/images/tbg.gif">&nbsp;提问管理&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
										 
										 
											<td>标题</td>
											<td>内容</td>
											
											<td>回复</td>
								 
											<td width="5%">学生</td>
											<td width="12%">提问时间</td>
										<td width="12%">操作</td>
		        </tr>	
		        
		         <c:forEach items="${tiwenList}" var="tiwen">
	 
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					
					   
											<td bgcolor="#FFFFFF" align="center">${tiwen.title} </td>
											<td bgcolor="#FFFFFF" align="center">${tiwen.contents}  </td>
										
											<td bgcolor="#FFFFFF" align="center">${tiwen.replays}  </td>
				 
											<td bgcolor="#FFFFFF" align="center">${tiwen.uname}  </td>
										 	<td bgcolor="#FFFFFF" align="center">${tiwen.twsj}  </td>
					<td bgcolor="#FFFFFF" align="center">
					    <a href="<%=path %>/totiwenEdit.action?id=${tiwen.id}"   class="pn-loperator">回复</a>
					    &nbsp; 
						<a href="#" onclick="tiwenDel('${tiwen.id}')" class="pn-loperator">删除</a>
					</td>
				</tr>
				</c:forEach>
			</table>
			
	 
	</body>
</html>