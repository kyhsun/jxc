<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>主页</title>
<link href="<%=basePath %>css/style.css" rel="stylesheet" type="text/css" />

<script language="JavaScript" src="<%=basePath %>js/jquery-2.1.1.min.js"></script>
	<link rel="stylesheet" href="<%=basePath %>css/demo.css" type="text/css" />
	<link rel="stylesheet" href="<%=basePath %>css/zTreeStyle/zTreeStyle.css" type="text/css" />
	<script type="text/javascript" src="<%=basePath %>zTree/jquery.ztree.core.js"></script>
<%-- 	<link rel="stylesheet" href="<%=basePath %>css/bootstrap-treeview.css" type="text/css" />
	<link rel="stylesheet" href="<%=basePath %>css/bootstrap.css" />
	<script type="text/javascript" src="<%=basePath %>js/bootstrap-treeview.js"></script>
	<script type="text/javascript" src="<%=basePath %>js/bootstrap.js"></script> --%>
<script type="text/javascript">
var zdata;

$.ajax({
	url:"<%=basePath%>left.do",
	type:"post",
	dataType:"json",
	async:true,
	success:function(data){
		alert(data);
		zdata = data;
	},
	error:function(data){
		zdata = data;
		alert("怎么会错"+data);
	}
});
alert("helloWord");
var setting = {
		data: {
			simpleData: {
				enable: true
			}
		}
	};

 
	var zNodes = zdata;

	$(document).ready(function(){
		$.fn.zTree.init($("#treeDemo"), setting, zNodes);
	});


</script>
<script type="text/javascript">
   $(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	  
</script>


</head>

<body style="background:#f0f9fd;">
<!-- <div class="container">
      <h1>Bootstrap Tree View - DOM Tree</h1>
      <br/>
      <div class="row">
        <div class="col-sm-12">
          <label for="treeview"></label>
          <div id="tree"/>
        </div>
      </div>
    </div>
<input type="button" id="btn"> 
<div id="treeDemo" class="zTree"></div>-->

<div class="lefttop"><span></span>请假</div>
    
       <dl class="leftmenu">
    <dd>
    <div class="title">
    <span><img src="<%=basePath %>images/leftico01.png" /></span>我的请假
    </div>
    	<ul class="menuson">
        <li><cite></cite><a href="<%=basePath %>showAllLeaveBill.htm" target="rightFrame">请假状态</a><i></i></li>
        <li><cite></cite><a href="<%=basePath %>showAllTaskByName.htm" target="rightFrame">发起请假</a><i></i></li>
        <li><cite></cite><a href="<%=basePath %>getList.htm" target="rightFrame">我的审批</a><i></i></li>
        </ul>    
    </dd>
    </dl>
        <%--
	 <dl class="leftmenu">
    <dd>
    <div class="title">
    <span><img src="<%=basePath %>images/leftico02.png" /></span>请假审批
    </div>
    <ul class="menuson">
        <li><cite></cite><a target="rightFrame" href="wr_spWrByLv">所有审批</a><i></i></li>
    </ul>     
    </dd> 
    </dl>



    	<dl class="leftmenu">
	    <dd>
	    <div class="title">
	    <span><img src="<%=basePath %>images/leftico02.png" /></span>请假统计
	    </div>
	    <ul class="menuson">
        <li><cite></cite><a target="rightFrame" href="wr_tjWr">查看所有成功的</a><i></i></li>
        <li><cite></cite><a target="rightFrame" href="wr_tjWr">查看未通过和不通过的</a><i></i></li>
    </ul>     
    </dd> 
    </dl>
     --%>


    


	
</body>
</html>
