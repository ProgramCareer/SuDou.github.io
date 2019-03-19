<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %> 

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
        
        <script language="javascript">
		   function save()
		    {
		        document.formAdd.submit();
		    }
        </script>
	</head>

	<body leftmargin="2" topmargin="9" background='<%=path %>/images/allbg.gif'>
			<form action="<%=path %>/teacherEdit.action" name="formAdd" method="post">
				 <input type="hidden" name="id" value="${teacher.id}"/> 
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#EEF4EA">
					        <td colspan="3" background="<%=path %>/images/wbg.gif" class='title'><span>添加</span></td>
					    </tr>
												
										   						
											   <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       姓名：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">	
				 				      				      <input type="text" id="name" name="name"  value="${teacher.name}"  maxlength="50"   />
					  				 
				  </td>
						</tr>
				  				   						
											   <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       性别：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">	
				 				      				      <input type="text" id="sex" name="sex"  value="${teacher.sex}"  maxlength="20"   />
					  				 
				  </td>
						</tr>
				  				   						
											   <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       年龄：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">	
				 				      				      <input type="text" id="age" name="age"  value="${teacher.age}"  maxlength="20"   />
					  				 
				  </td>
						</tr>
				  				   						
											   <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       电话：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">	
				 				      				      <input type="text" id="tel" name="tel"  value="${teacher.tel}"  maxlength="20"   />
					  				 
				  </td>
						</tr>
				  				   						
											   <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       授课经验：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">	
				 				      				      <input type="text" id="jingyan" name="jingyan"  value="${teacher.jingyan}"  maxlength="50"   />
					  				 
				  </td>
						</tr>
				  				   						
											   <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       辅导科目：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">	
				 				      				      <input type="text" id="fdkm" name="fdkm"  value="${teacher.fdkm}"  maxlength="200"   />
					  				 
				  </td>
						</tr>
				  				   						
											   <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       授课方式：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">	
				 				      				      <input type="text" id="skfs" name="skfs"  value="${teacher.skfs}"  maxlength="100"   />
					  				 
				  </td>
						</tr>
				  				   						
											   <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       个人介绍：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">	
				 				      				      <input type="text" id="grjj" name="grjj"  value="${teacher.grjj}"  maxlength="65535"   />
					  				 
				  </td>
						</tr>
				  				   						
											   <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       密码：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">	
				 				      				      <input type="text" id="pwd" name="pwd"  value="${teacher.pwd}"  maxlength="50"   />
					  				 
				  </td>
						</tr>
				  				   						
											   <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       照片：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">	
				 				      				      <input type="text" id="fujian" name="fujian"  value="${teacher.fujian}"  maxlength="255"   />
					  				 
				  </td>
						</tr>
				  				   						   
							
					 
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        &nbsp;
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						       <input type="button" value="提交" onclick="save()"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
   </body>
</html>