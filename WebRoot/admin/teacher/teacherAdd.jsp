<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>

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
		<script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
		<script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
		<script type="text/javascript" src="<%=path %>/js/popup.js"></script>
 
        
        <script type="text/javascript" src="<%=path %>/js/popup.js"></script>
        
        <script language="javascript">
            var i=0;
		    
			function up()
		    {
		        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:400,height:200});
	            pop.setContent("contentUrl","<%=path %>/upload/upload.jsp");
	            pop.setContent("title","文件上传");
	            pop.build();
	            pop.show();
	            //另一红上传方式可以参照进销存
		    }
			
		    
		    function check()
		    {
		        
		        document.formAdd.submit();
		    }
        </script>
	</head>

	<body leftmargin="2" topmargin="9"
		background='<%=path %>/images/allbg.gif'>
		<form action="<%=path %>/teacherAdd.action" name="formAdd"
			method="post">
			<input type="hidden" id="id" name="id" value="${teacher.id}" maxlength="50" />
			
			<table width="98%" align="center" border="0" cellpadding="4"
				cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom: 8px">
				<tr bgcolor="#EEF4EA">
					<td colspan="3" background="<%=path %>/images/wbg.gif"
						class='title'>
						<span>家教信息管理</span>
					</td>
				</tr>



				<tr align='center' bgcolor="#FFFFFF"
					onMouseMove="javascript:this.bgColor='red';"
					onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td width="25%" bgcolor="#FFFFFF" align="right">
						姓名：
					</td>
					<td width="75%" bgcolor="#FFFFFF" align="left">
						<input type="text" id="name" name="name" value="${teacher.name}" maxlength="50" />

					</td>
				</tr>
 

				<tr align='center' bgcolor="#FFFFFF"
					onMouseMove="javascript:this.bgColor='red';"
					onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td width="25%" bgcolor="#FFFFFF" align="right">
						电话：
					</td>
					<td width="75%" bgcolor="#FFFFFF" align="left">
						<input type="text" id="tel" name="tel" value="${teacher.tel}" maxlength="20" />

					</td>
				</tr>


				<tr align='center' bgcolor="#FFFFFF"
					onMouseMove="javascript:this.bgColor='red';"
					onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td width="25%" bgcolor="#FFFFFF" align="right">
						授课经验：
					</td>
					<td width="75%" bgcolor="#FFFFFF" align="left">
						<input type="text" id="jingyan" name="jingyan" value="${teacher.jingyan}"
							maxlength="50" />

					</td>
				</tr>


				<tr align='center' bgcolor="#FFFFFF"
					onMouseMove="javascript:this.bgColor='red';"
					onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td width="25%" bgcolor="#FFFFFF" align="right">
						辅导科目：
					</td>
					<td width="75%" bgcolor="#FFFFFF" align="left">
						<input type="text" id="fdkm" name="fdkm" value="${teacher.fdkm}" maxlength="200" />

					</td>
				</tr>


				<tr align='center' bgcolor="#FFFFFF"
					onMouseMove="javascript:this.bgColor='red';"
					onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td width="25%" bgcolor="#FFFFFF" align="right">
						授课方式：
					</td>
					<td width="75%" bgcolor="#FFFFFF" align="left">
						<input type="text" id="skfs" name="skfs" value="${teacher.skfs}" maxlength="100" />

					</td>
				</tr>


				<tr align='center' bgcolor="#FFFFFF"
					onMouseMove="javascript:this.bgColor='red';"
					onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td width="25%" bgcolor="#FFFFFF" align="right">
						个人介绍：
					</td>
					<td width="75%" bgcolor="#FFFFFF" align="left">
						 
                        <textarea rows="8" cols="80" name="grjj">${teacher.grjj}</textarea>
					</td>
				</tr>


			 
				<tr align='center' bgcolor="#FFFFFF"
					onMouseMove="javascript:this.bgColor='red';"
					onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td width="25%" bgcolor="#FFFFFF" align="right">
						个人照片：
					</td>
					<td width="75%" bgcolor="#FFFFFF" align="left">
						<input type="text" id="fujian" name="fujian" value="${teacher.fujian}"
							maxlength="255" />
							
				         <input type="button" value="上传" onclick="up()"/>

					</td>
				</tr>



				<tr align='center' bgcolor="#FFFFFF"
					onMouseMove="javascript:this.bgColor='red';"
					onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td width="25%" bgcolor="#FFFFFF" align="right">
						&nbsp;
					</td>
					<td width="75%" bgcolor="#FFFFFF" align="left">
						<input type="button" value="提交" onclick="check()" />
						&nbsp;
						<input type="reset" value="重置" />
						&nbsp;
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>