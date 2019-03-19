<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
		<script language="JavaScript" src="<%=path%>/js/public.js"
			type="text/javascript">
</script>
		<script type='text/javascript'
			src='<%=path%>/dwr/interface/loginService.js'>
</script>
		<script type='text/javascript' src='<%=path%>/dwr/engine.js'>
</script>
		<script type='text/javascript' src='<%=path%>/dwr/util.js'>
</script>
	 		<link rel="stylesheet" type="text/css"
			href="<%=path%>/qiantai/css/style.css" />
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/qiantai/css/shopping-mall-index.css" />
	<body>

		<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>


		<div class="blank"></div>




		<div class="usBox">
			<div class="usBox_2 clearfix"
				style="font-size: 16px !important; width: auto !important; padding: 20px 200px 50px 200px; border: 1px solid #ddd;">
				<div class="regtitle"></div>
				

 <c:forEach items="${requestScope.liuyanList}" var="liuyan">
	     <TABLE style="MARGIN-TOP: 8px; WORD-BREAK: break-all" borderColor=#e3e3e3 cellSpacing=0 borderColorDark=white cellPadding=0 rules=all width="100%"  borderColorLight=#e0e0e0 border=1>
	        <TR bgColor=#f0f0f0 height=30>
		          
		          <TD colSpan=2 style="font-size: 11px;">
		                <span style="float:left">【标题】${liuyan.liuyantitle} </span>
		                <span style="float:right">${liuyan.liuyandate }&nbsp;&nbsp;&nbsp;&nbsp;
	                            
		                </span>
		          </TD>
	        </TR>
	       
	        <TR height=20>
		          <TD style="PADDING-RIGHT: 6px; PADDING-LEFT: 6px; PADDING-BOTTOM: 6px; PADDING-TOP: 6px" vAlign=top style="font-size: 11px;">
		               ${liuyan.liuyancontent }
		          </TD>
	        </TR>
	         <TR height=20>
		          <TD style="PADDING-RIGHT: 6px; PADDING-LEFT: 6px; PADDING-BOTTOM: 6px; PADDING-TOP: 6px" vAlign=top style="font-size: 11px;">
		              
		          </TD>
		          
	        </TR>
	    </TABLE>
	    </c:forEach>
	    
	    
	    <c:if test="${sessionScope.user!=null}">
	    <TABLE style="MARGIN-TOP: 8px; WORD-BREAK: break-all" borderColor=#e3e3e3 cellSpacing=0 borderColorDark=white cellPadding=0 rules=all width="100%"  borderColorLight=#e0e0e0 border=1>
	        <TR bgColor=#f0f0f0 height=30>
		          
		          <TD colSpan=2 style="font-size: 11px;">
		                <span style="float:left">在线留言</span>
		          </TD>
	        </TR>
	       
	        <TR height=20>
		          <TD>
			            <form action="<%=path %>/liuyanAdd.action" name="form1" method="post">
			            <table border="0">
						     <tr>
						         <td style="font-size: 11px;">标题:</td>
						         <td><input type="text" name="liuyantitle" size="50"/></td>
						     </tr>
						     <tr>
						         <td style="font-size: 11px;">内容:</td>
						         <td>
						         
						             <textarea rows="15" cols="80" name="liuyancontent"></textarea>
						               
				                 </td>
						     </tr>
						     <tr>
						         <td style="font-size: 11px;">&nbsp;</td>
						         <td>
						             <input type="submit" name="" value="提交">
				                 </td>
						     </tr>
						</table>
						</form>
		          </TD>
	        </TR>
	    </TABLE>
	    </c:if>



			</div>
		</div>









		<div class="blank"></div>
		<jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>

	</body>
</html>
