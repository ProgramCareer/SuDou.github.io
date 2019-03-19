<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>

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
		    function check()
		    {
		        document.formAdd.submit();
		    }
        </script>
	</head>

	<body leftmargin="2" topmargin="9" background='<%=path %>/images/allbg.gif'>
			<form action="<%=path %>/tiwenAdd.action" name="formAdd" method="post">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#EEF4EA">
					        <td colspan="3" background="<%=path %>/images/wbg.gif" class='title'><span>添加</span></td>
					    </tr>
						
										  
						
					   <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       ：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">	
				 				      				      <input type="text" id="tid" name="tiwen.tid"   maxlength="11"   />
					  					    
					      </td>
						</tr>
				 				  
						
					   <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       教师：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">	
				 				      				      <input type="text" id="tname" name="tiwen.tname"   maxlength="20"   />
					  					    
					      </td>
						</tr>
				 				  
						
					   <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       标题：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">	
				 				      				      <input type="text" id="title" name="tiwen.title"   maxlength="200"   />
					  					    
					      </td>
						</tr>
				 				  
						
					   <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       内容：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">	
				 				      				      <input type="text" id="contents" name="tiwen.contents"   maxlength="5000"   />
					  					    
					      </td>
						</tr>
				 				  
						
					   <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       提问时间：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">	
				 				      				      <input type="text" id="twsj" name="tiwen.twsj"   maxlength="20"   />
					  					    
					      </td>
						</tr>
				 				  
						
					   <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       回复：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">	
				 				      				      <input type="text" id="replays" name="tiwen.replays"   maxlength="1000"   />
					  					    
					      </td>
						</tr>
				 				  
						
					   <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       ：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">	
				 				      				      <input type="text" id="uid" name="tiwen.uid"   maxlength="11"   />
					  					    
					      </td>
						</tr>
				 				  
						
					   <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       学生：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">	
				 				      				      <input type="text" id="uname" name="tiwen.uname"   maxlength="20"   />
					  					    
					      </td>
						</tr>
				 				  						  
							
					 
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        &nbsp;
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						       <input type="button" value="提交" onclick="check()"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
   </body>
</html>