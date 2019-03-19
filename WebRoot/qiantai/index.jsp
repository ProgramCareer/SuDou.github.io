<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">
<!-- saved from url=(0041)http://www.nbhmyq.com/7853-473/16167.html -->
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>

		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>家教平台</title>
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/qiantai/css/style.css" />
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/qiantai/css/shopping-mall-index.css" />
		<script type="text/javascript" src="<%=path%>/qiantai/js/jquery.js"></script>
		<script type="text/javascript" src="<%=path%>/qiantai/js/zhonglin.js"></script>
        
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
         function liuyanAll()
	        {
	            <c:if test="${sessionScope.user==null}">
	                  alert("请先登录");
	            </c:if>
	            
	             <c:if test="${sessionScope.user!=null}">
	                 var url="<%=path %>/liuyanAll.action";
				     window.open(url,"_blank");
	            </c:if>
	        }
        </script>

	</head>
	<body>

		<header>
		<!--top 开始-->
		<div class="top">
			<div class="top-con w1200">
				<p class="t-con-l f-l">
					您好，欢迎来到家教平台
				</p>
				
				 <c:if test="${sessionScope.user!=null}">
				<ul class="t-con-r f-r">
            	<li><a href="<%=path %>/qiantai/userinfo/userXinxi.jsp">我 (个人中心)</a></li>
            	<li><a href="<%=path %>/yuyueMe.action">我的预约</a></li>
            	</ul>
            	 </c:if>
            	 
            	 
            	 <c:if test="${sessionScope.user==null}">
				<ul class="t-con-r f-r">
            	<li><a href="<%=path%>/qiantai/userinfo/userReg.jsp">注册</a></li>
            	<li><a href="<%=path%>/qiantai/userlogin/userlogin.jsp">登录</a></li>
            	 
            	</ul>
            	 </c:if>
            	 
            	 
                <div style="clear:both;"></div>
             
				<div style="clear: both;"></div>
			</div>
		</div>

		<!--logo search 开始-->
		<div class="hd-info1 w1200">
			<div class="logo f-l">
				<h1>
					<a href="#"  ><img   src="<%=path%>/qiantai/images/logo.jpg" />
					</a>
				</h1>
			</div>
			<!-- div class="dianji f-r">
				<div class="btn1">
					<button class="btn1-l" onclick="javascript:window.location.href='<%=path%>/qiantai/userinfo/userReg.jsp'">
						注册
					</button>
					<button class="btn1-r" onclick="javascript:window.location.href='<%=path%>/qiantai/userlogin/userlogin.jsp'">
						登录
					</button>
					<div style="clear: both;"></div>
				</div>
				<button class="btn2">
					商家入口 >
				</button>
			</div-->
			<div class="search f-r">
				<ul class="sp">
					 
					<div style="clear: both;"></div>
				</ul>
				 

			</div>

			<div style="clear: both;"></div>
		</div>


		<!--nav 开始-->
     <div style="border-bottom:2px solid #09c762;">
    	<div class="nav w1200">
    	 
        <ul>
        <li>
					<a href="<%=path%>/index.action">首页</a>
				</li>
				<li>
					<a href="<%=path%>/listteacher.action">找家教</a>
				</li>
	 
						<li>
					<a href="<%=path%>/gonggaoList.action">网站公告</a>
				</li>
				<li>
					<a href="#" onclick="liuyanAll()" target="_self">在线留言</a>
				</li>
            <div style="clear:both;"></div>
        </ul>
        <div style="clear:both;"></div>
    </div>
    </div>
		</header>


		<!--banner 开始-->
		<div class="banner-box">
			<div class="banner w1200">
				<ul>
					<li>
						<a href="/jjpt/listteacher.action"><img
								src="<%=path%>/qiantai/images/banner1.jpg" />
						</a>
					</li>
					<li>
						<a href="/jjpt/listteacher.action"><img
								src="<%=path%>/qiantai/images/banner2.jpg" />
						</a>
					</li>
					<li>
						<a href="/jjpt/listteacher.action"><img
								src="<%=path%>/qiantai/images/banner1.jpg" />
						</a>
					</li>
					<li>
						<a href="/jjpt/listteacher.action"><img
								src="<%=path%>/qiantai/images/banner2.jpg" />
						</a>
					</li>
					<li>
						<a href="/jjpt/listteacher.action"><img
								src="<%=path%>/qiantai/images/banner1.jpg" />
						</a>
					</li>
					<li>
						<a href="/jjpt/listteacher.action"><img
								src="<%=path%>/qiantai/images/banner2.jpg" />
						</a>
					</li>
					<div style="clear: both;"></div>
				</ul>
				 
			</div>
		</div>


		 
		<div class="shopping-content w1200">
			<div class="sp-con-info">
				<h3 class="sp-info-tit">
					<span>最新加入</span>
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