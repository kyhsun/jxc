<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>审批</title>
<link href="<%=basePath%>css/style2.css" rel="stylesheet" type="text/css">
<script language="javascript" src="<%=basePath%>js/clientSideApp.js"></script>
<script language="JavaScript" type="text/javascript" src="<%=basePath%>js/win_center.js"></script>
<SCRIPT language=JavaScript type=text/JavaScript>
function windowOpen(theURL,winName,features,width,hight,scrollbars,top,left) 
{
  var parameter="top="+top+",left="+left+",width="+width+",height="+hight;
  if(scrollbars=="no")
 {parameter+=",scrollbars=no";}
  else
 {parameter+=",scrollbars=yes";}
  window.open(theURL,winName,parameter);
}
</SCRIPT>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" align="center" valign="bottom" class="td06"><table width="98%" border="0" cellspacing="3" cellpadding="0">
      <tr>
        <td width="15"><img src="../../images/index_32.gif" width="9" height="9"></td>
        <td valign="bottom" class="title">请假审批</td>
      </tr>
    </table></td>
  </tr>
</table>
<br>
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td class="td_page">请假时间
			从<input name="PARA_YM_NOW" size="10" type="text" class="input"   id="PARA_YM_NOW" next="A001014" alt="ï¿½ï¿½Ñ¯ï¿½ï¿½ï¿½ï¿½|0|d|||" value="" onFocus="{obtainFocus(this),this.select()}" onKeyPress="gotoNextInput(this)" onBlur="matchInput(this)" readonly>
			<input type="button"  class="button_select" onClick="fPopUpCalendarDlg('PARA_YM_NOW')">			
			到<input name="PARA_YM_NOW1" size="10" type="text" class="input"   id="PARA_YM_NOW" next="A001014" alt="ï¿½ï¿½Ñ¯ï¿½ï¿½ï¿½ï¿½|0|d|||" value="" onFocus="{obtainFocus(this),this.select()}" onKeyPress="gotoNextInput(this)" onBlur="matchInput(this)" readonly>
			<input type="button"  class="button_select" onClick="fPopUpCalendarDlg('PARA_YM_NOW1')">	

<input name="Submit" type="submit" class="buttonface" value="  提交  ">
    </td>
  </tr>
</table>
<br>
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
  <td  class="td_01">姓名</td>
    <td nowrap class="td_01">请假天数</td>
    <td nowrap class="td_01">当前状态</td>
    <td nowrap class="td_01">详细信息</td>
  </tr>
  <c:forEach items="${spWrList }" var="w">
 
  <tr> 
    <td class="td_01">${w.user.userName }</td>
    <td class="td_01">${w.day }</td>
    <td class="td_01">
  <%--   <c:if test="${w.rol == 2}">民警请假</c:if>
    <c:if test="${w.rol == 3}">等待局班子</c:if>
    <c:if test="${w.zt == 4}">等待政委或局长审批</c:if>
    <c:if test="${w.zt == 5}">审批通过</c:if> --%>
     <c:if test="${w.zt < 5}">待审批</c:if>
   

    
    </td>
    <td class="td_01"><a href="${pageContext.request.contextPath }/qjManager/wr_xx?id=${w.id}" >&nbsp;&nbsp;>>></a></td>
  </tr>
    </c:forEach>
   
   
  
  <tr> 
    <td class="td_02">&nbsp;</td>
    <td class="td_02">&nbsp;</td>
    <td class="td_02">&nbsp;</td>
    <td class="td_02">&nbsp;</td>

  </tr>
  <tr> 
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>

  </tr>
  <tr>
    <td class="td_02">&nbsp;</td>
    <td class="td_02">&nbsp;</td>
    <td class="td_02">&nbsp;</td>
    <td class="td_02">&nbsp;</td>

  </tr>
  <tr> 
    <td class="td_02">&nbsp;</td>
    <td class="td_02">&nbsp;</td>
    <td class="td_02">&nbsp;</td>
    <td class="td_02">&nbsp;</td>

  </tr>

</table>
<table width="95%"  border="0" cellpadding="0" cellspacing="0" class="table02" align="center">
  <tr>
    <td height="30" align="right"><img src="../../images/1.gif" width="4" height="5" align="absmiddle"> ï¿½ï¿½Ò³ï¿½ï¿½ <img src="../../images/2.gif" width="3" height="5" align="absmiddle"> ï¿½ï¿½Ò»Ò³ï¿½ï¿½ <img src="../../images/2-2.gif" width="3" height="5" align="absmiddle"> ï¿½ï¿½Ò»Ò³ï¿½ï¿½ <img src="../../images/3.gif" width="4" height="5" align="absmiddle"> Ä©Ò³ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ 1 Ò³ 1 ï¿½ï¿½ï¿½ï¿½Â¼</td>
  </tr>
</table>
</body>
</html>
