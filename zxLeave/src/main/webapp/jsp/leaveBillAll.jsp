<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>发起请假</title>
<link href="css/style2.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});
</script>
</head>
<body>
	<div class="place">
    <span>位置</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">请假</a></li>
    <li><a href="#">我的请假</a></li>
    </ul>
    </div>
    <div class="rightinfo">
    
    <div class="tools">
   
     
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
	<td><a href="<%=basePath %>jsp/addLeaveBill.jsp">发起新的请假</a></td>
</tr>
   <tr>
    <td class="td_form02">开始时间</td>
    <td class="td_form02">结束时间</td>
    <td class="td_form02">请假事由</td>
    <td class="td_form02">请假天数</td>
    <td class="td_form02">请假状态</td>
    <td class="td_form02">操作</td>
  </tr>
  <c:forEach var="l" items="${leaveBill }">
  <tr>
  <td><fmt:formatDate value="${l.starttime }" type="date" pattern="yyyy-MM-dd HH:mm"/></td>
  <td><fmt:formatDate value="${l.entime }" type="date" pattern="yyyy-MM-dd HH:mm"/></td>
  <td>${l.cause }</td>
  <td>${l.day }</td>
  <c:if test="${l.state == 0 }">
  <td>未开始</td>
  </c:if>
    <c:if test="${l.state == 1 }">
  <td>审批中</td>
  </c:if>
   <c:if test="${l.state == 2 }">
  <td>请假成功</td>
  </c:if>
     <c:if test="${l.state == -1 }">
  <td>请假失败 ||<a href="<%=basePath %>startSq.htm?leavebillid=${l.leavebillid }">再次申请</a></td>
  </c:if>
  <c:if test="${l.state == 0 }">
  <td><a href="<%=basePath %>del.htm">【删除】</a><a href="<%=basePath %>del.htm">[修改]  </a><a href="<%=basePath %>startSq.htm?leavebillid=${l.leavebillid }">申请请假</a></td>
  </c:if>
  </tr>
  
  
  </c:forEach>
  
</table>
<br/></div></div>
 
</body>
</html>