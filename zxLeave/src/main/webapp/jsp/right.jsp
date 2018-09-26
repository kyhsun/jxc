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
<script type="text/javascript">
jQuery(function(){
		$("#en").blur(function(){
			var day =  $("#day").val();
			var st =  $("#st").val();
			var en =  $("#en").val();
			var rol =  $("#rol").val();
			
			if(day != "" && day%0.5 == 0 ){
			var time = aa(st,en)+1;
			if(rol == 1){
			
				if(day <= 2){
				
					$("#lv").val("1");
				}
				if(day > 2 && day <= 30){
					$("#lv").val(2);
				}
				if(day > 30){
					$("#lv").val(4);
				}
			}else if(rol == 2){
				if(day <=3){
					$("#lv").val(1);
				}
				if(day > 3){
					$("#lv").val(2);
				}
			}else if(rol == 3 || rol == 4 || rol == 5 ){
				$("#lv").val(1);
			}
			
			if(time<day ){
			$("#sub").attr("disabled",true).css("cursor","not-allowed");
				alert("开始时间或结束时间不正确");
			}else{
			
				$("#sub").attr("disabled",false).css("cursor","");
			}
				
				//document.getElementById("sub").disabled=true;
				return;
			}else {
			alert("请输入0.5的倍数");
			
			//document.getElementById("sub").disabled=false;
			/* document.getElementById("sub").removeAttribute("disabled"); */
			}
});
});

function aa(faultDate,completeTime){
	var stime = Date.parse(new Date(faultDate));
	var etime = Date.parse(new Date(completeTime));
	var usedTime = etime - stime;  //两个时间戳相差的毫秒数
	var days=Math.floor(usedTime/(24*3600*1000));
	//计算出小时数
	var leave1=usedTime%(24*3600*1000);    //计算天数后剩余的毫秒数
	var hours=Math.floor(leave1/(3600*1000));
	//计算相差分钟数
	var leave2=leave1%(3600*1000);        //计算小时数后剩余的毫秒数
	var minutes=Math.floor(leave2/(60*1000));
	var time = days;
	return time;
}
</script>

</head>


<body>

	<div class="place">
    <span>位置</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">请假</a></li>
    <li><a href="#">发起请假</a></li>
    </ul>
    </div>
    <div class="rightinfo">
    
    <div class="tools">
    <form action="wr_addWR" method="post">
   <table align="center" width="95%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="90" height="24" class="td_form01">姓名</td>
        <td class=td_form02>${user.userName }</td>
        <td width="90" class="td_form01">性别</td>
        <td class=td_form02>${user.sex }</td>
      </tr>
      <tr>
        <td height="24" class="td_form01">部门</td>
        <td class=td_form02>${user.department }</td>
        <td class="td_form01">警号</td>
        <td class=td_form02>${user.siren1 }</td>
      </tr>
            <tr>
        <td height="24" class="td_form01">具体天数</td>
        <td class=td_form02><input type="text" name="day" id="day"/></td>
        <td class="td_form01">工作年龄</td>
        <td class=td_form02>
        <input type="text" name="lightService"/>
        <input id="lv" type="hidden" name="lv"/>
        <input id="rol" type="hidden" name="rol" value="${rId }"/>
        </td>
      </tr>
   
</table>
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">

       <tr>
    <td width="90" class="td_form01">请假时间</td>
    <td class="td_form02">
			从<input name="stratTime" size="10" class="input"   id="st"  onclick="WdatePicker({minDate:'%y-%M-%d'});" type="text"/>  	
    到
			<input name="endTime" size="10" type="text" class="input"   id="en" onclick="WdatePicker({minDate:'%y-%M-%d'});" />
			</td>
  </tr>
  <tr>
    <td class="td_form01">请假类别</td>
    <td class="td_form02"><select name="types">
      <option value="1">事假</option>
      <option value="2">病假</option>
      <option value="3">探亲假</option>
      <option value="4">婚假</option>
      <option value="5">产假</option>
      <option value="6">护理假</option>
      <option value="6">流产休假</option>
      <option value="6">胞胎假</option>
      <option value="6">丧假</option>
      <option value="6">休假</option>
    </select>    </td>
  </tr>
  <tr>
    <td class="td_form01">请假事由<br/>
      <br/>
    （必填） <br/></td>
    <td class="td_form02"><textarea name="reason" cols="80" rows="5"></textarea>
      <br/>
      如：调研、出国、参加会议等去往何地、何事由。</td>
  </tr>
</table>
<br/>
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center"><input id="sub" name="Submit2" type="submit" class="buttonface" value="  提交  "/>
    <input name="Submit" type="submit" class="buttonface" value="  返回  "  onClick="window.close()" /></td>
  </tr>
</table>
</form>
<br/></div></div>


</body>
</html>