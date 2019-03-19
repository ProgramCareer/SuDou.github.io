<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
				<link rel="stylesheet" type="text/css"
			href="<%=path%>/qiantai/css/style.css" />
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/qiantai/css/shopping-mall-index.css" />
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
		<script type="text/javascript">
	        function buy1()
	        {
	            <c:if test="${sessionScope.user==null}">
	                  alert("请先登录");
	            </c:if>
	           <c:if test="${sessionScope.user!=null}">
	            if(document.buy.quantity.value=="")
	            {
	                alert("请输入购买数量");
	                return false;
	            }
	            document.buy.submit();
	            </c:if>
	        }
	    </script>
	    
	    
	    <script type="text/javascript">
         function buy1(goodid)
	        {
	        
	            <c:if test="${sessionScope.user==null}">
	                alert("请先登录");
	            </c:if>
	            <c:if test="${sessionScope.user!=null}">
		            document.getElementById("goodsId").value = goodid;
		            document.buy.submit();
	            </c:if>
	        }
        
        </script>
        
	</head>

	<body>
		<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>
		 
		<!--商品内容页面-->
		<div class="shopping-content w1200">
			<div class="sp-con-info">
				<h3 class="sp-info-tit">
					家教中心
				</h3>

				<ul class="sp-info-r f-r">
				
				<c:forEach items="${teacherList}" var="teacher">
				 
					<li >
						<div class="li-top">
							<a href="<%=path%>/teacherDetailQian.action?id=${teacher.id}" class="li-top-tu"><img
								style="width: 140px;height: 190px;"	src="<%=path%>/${teacher.fujian}" />
							</a>
						</div>
						<p class="miaoshu">
							${teacher.name}
						</p>
						 <p class="miaoshu">
						家教经验：${teacher.jingyan}
						</p>
						<p class="miaoshu">
						辅导科目：${teacher.fdkm}
						</p>
					</li>
				 </c:forEach>
					 


				</ul>
				<div style="clear: both;"></div>
			</div>




		 
		</div>
		
		
		 <form action="<%=path %>/addToCart.action" method="post" name="buy">
              <input name="goodsId" type="hidden" id="goodsId"/>
               <input name="quantity" type="hidden" id="quantity" value="1"/>
              
              </form>
		<jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
	   
	</body>
</html>
