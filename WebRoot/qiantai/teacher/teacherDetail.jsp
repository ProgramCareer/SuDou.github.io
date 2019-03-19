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
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/qiantai/css/style.css" />
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/qiantai/css/shopping-mall-index.css" />
		<script type="text/javascript" src="<%=path%>/qiantai/js/jquery.js"></script>
		<script type="text/javascript" src="<%=path%>/qiantai/js/zhonglin.js"></script>
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
		<script type="text/javascript">
	        function buy1()
	        {
	             <c:if test="${sessionScope.user==null}">
	                  alert("请先登录");
	            </c:if>
	             <c:if test="${sessionScope.user!=null}">
	             
	            document.buy.submit();
	          </c:if>
	        }
	        
	        
	        

 


	    </script>
	</head>

	<body style="position:relative;"> 
	 
	 
	 
	<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>
	
    
    <!--内容开始-->
    <div class="details w1200">
    	<div class="deta-info1">
        	<div class="dt-if1-l f-l">
            	<div class="dt-if1-datu">
                	<ul qie-da="">
                       <li><a href="#"><img style="width:140px;height:190px;" src="<%=path %>/${teacher.fujian}" /></a></li>
                      
                       <div style="clear:both;"></div>
                    </ul>
                </div>
                
                <div class="dt-if1-fx">
                	<span> </span>
                    
                </div>
            </div>
          
        	<div class="dt-if1-m f-l">
        	  <form action="<%=path %>/yuyueAdd.action" method="post" name="buy">
        	  
        	   
        	  <input type="hidden" name="tid" value="${teacher.id}"/>
            	<div class="dt-ifm-hd">
                	<h3><a href="#">${teacher.name}</a></h3>
                	 <h3><a href="#">联系方式：${teacher.tel} </a></h3>
                	  <h3><a href="#">家教经验：${teacher.jingyan} </a></h3>
                	   <h3><a href="#">辅导科目：${teacher.fdkm} </a></h3>
                	   <h3><a href="#">授课方式：${teacher.skfs} </a></h3>
                </div>
               
                
                
               
                <div class="dt-ifm-box4">
                 

                	 <input style=" width:78px; height:28px; background-color:#09c762;margin-right:7px; font-size:12px; color:#fff; border:none; float:left; cursor:pointer;" type="button"  onclick="buy1();" class="btn2"  value="立即预约"/>
                	       
                </div>
                  </form>
            </div>
            
        	<div class="dt-if1-r f-r">
             
                
            </div>
            <div style="clear:both;"></div>
        </div>
      
        <div class="deta-info2">
        	 
            <div class="dt-if2-r f-r" style="width:100%">
                <ul class="if2-tit2">
                    <li class="current" com-det="dt1"><a href="JavaScript:;">个人简介</a></li>
                   
                    <div style="clear:both;"></div>
                </ul>
                <div style="border:1px solid #DBDBDB;" com-det-show="dt1">
                	<div class="if2-tu1">
                       ${teacher.grjj}
                        <div style="clear:both;"></div>
                    </div>
                    <div class="if2-tu2">
                        <div style="clear:both;"></div>
                    </div>
                    <div class="if2-tu3">
                    </div>
                    <ul class="if2-tu4">
                      
                        <div style="clear:both;"></div>
                    </ul>
                </div>
               
            </div>
            <div style="clear:both;"></div>
        </div>
    </div>
    
     <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
</body>
</html>
