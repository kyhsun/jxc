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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>æ æ é¢ææ¡£</title>
<link href="<%=basePath %>css/style.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>css/select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=basePath %>js/jquery.js"></script>
<script type="text/javascript" src="<%=basePath %>js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src="<%=basePath %>js/select-ui.min.js"></script>
<script type="text/javascript" src="<%=basePath %>editor/kindeditor.js"></script>

<script type="text/javascript">
    KE.show({
        id : 'content7',
        cssPath : './index.css'
    });
  </script>
  
<script type="text/javascript">
$(document).ready(function(e) {
    $(".select1").uedSelect({
		width : 345			  
	});
	$(".select2").uedSelect({
		width : 167  
	});
	$(".select3").uedSelect({
		width : 100
	});
});
</script>
</head>

<body>

	<div class="place">
    <span>ä½ç½®ï¼</span>
    <ul class="placeul">
    <li><a href="#">é¦é¡µ</a></li>
    <li><a href="#">ç³»ç»è®¾ç½®</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    
    <div id="usual1" class="usual"> 
    
    <div class="itab">
  	<ul> 
    <li><a href="#tab1" class="selected">åå¸éç¥</a></li> 
    <li><a href="#tab2">èªå®ä¹</a></li> 
  	</ul>
    </div> 
    
  	<div id="tab1" class="tabson">
    
    <div class="formtext">Hiï¼<b>admin</b>ï¼æ¬¢è¿æ¨è¯ç¨ä¿¡æ¯åå¸åè½ï¼</div>
    
    <ul class="forminfo">
    <li><label>æèä¼ä¸<b>*</b></label><input name="" type="text" class="dfinput" value="è¯·å¡«ååä½åç§°"  style="width:518px;"/></li>
   
    <li><label>èä½åç§°<b>*</b></label>  
    

    <div class="vocation">
    <select class="select1">
    <option>UIè®¾è®¡å¸</option>
    <option>äº¤äºè®¾è®¡å¸</option>
    <option>åç«¯è®¾è®¡å¸</option>
    <option>ç½é¡µè®¾è®¡å¸</option>
    <option>Flashå¨ç»</option>
    <option>è§è§è®¾è®¡å¸</option>
    <option>æç»è®¾è®¡å¸</option>
    <option>ç¾å·¥</option>
    <option>å¶ä»</option>
    </select>
    </div>
    
    </li>
    
    <li><label>èªèµå¾é<b>*</b></label>
    
    <div class="vocation">
    <select class="select1">
    <option>3000-5000</option>
    <option>5000-8000</option>
    <option>8000-10000</option>
    <option>10000-15000</option>
    </select>
    </div>
    
    
    
    </li>
    <li><label>å·¥ä½å°ç¹<b>*</b></label>
    
    <div class="usercity">
    
    <div class="cityleft">
    <select class="select2">
    <option>æ±è</option>
    <option>æ¹å</option>
    <option>å¹¿ä¸</option>
    <option>åäº¬</option>
    <option>æ¹å</option>
    </select>
    </div>
    
    <div class="cityright">
    <select class="select2">
    <option>åäº¬</option>
    <option>æ é¡</option>
    <option>çå</option>
    <option>å¾å·</option>
    <option>è¿äºæ¸¯</option>
    </select>
    </div>
    
    </div>
    
    
    
    </li>
    <li><label>éç¥åå®¹<b>*</b></label>
    

    <textarea id="content7" name="content" style="width:700px;height:250px;visibility:hidden;"></textarea>
    
    </li>
    <li><label>&nbsp;</label><input name="" type="button" class="btn" value="é©¬ä¸åå¸"/></li>
    </ul>
    
    </div> 
    
    
  	<div id="tab2" class="tabson">
    
    
    <ul class="seachform">
    
    <li><label>ç»¼åæ¥è¯¢</label><input name="" type="text" class="scinput" /></li>
    <li><label>ææ´¾</label>  
    <div class="vocation">
    <select class="select3">
    <option>å¨é¨</option>
    <option>å¶ä»</option>
    </select>
    </div>
    </li>
    
    <li><label>éç¹å®¢æ·</label>  
    <div class="vocation">
    <select class="select3">
    <option>å¨é¨</option>
    <option>å¶ä»</option>
    </select>
    </div>
    </li>
    
    <li><label>å®¢æ·ç¶æ</label>  
    <div class="vocation">
    <select class="select3">
    <option>å¨é¨</option>
    <option>å¶ä»</option>
    </select>
    </div>
    </li>
    
    <li><label>&nbsp;</label><input name="" type="button" class="scbtn" value="æ¥è¯¢"/></li>
    
    </ul>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>ç¼å·<i class="sort"><img src="images/px.gif" /></i></th>
        <th>æ é¢</th>
        <th>ç¨æ·</th>
        <th>ç±è´¯</th>
        <th>åå¸æ¶é´</th>
        <th>æ¯å¦å®¡æ ¸</th>
        <th>æä½</th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>20130908</td>
        <td>çéå¹³å¹åï¼é©¬è±ä¹å£°æå­å­è§è¡ äººæ´»çæ²¡ææ</td>
        <td>admin</td>
        <td>æ±èåäº¬</td>
        <td>2013-09-09 15:05</td>
        <td>å·²å®¡æ ¸</td>
        <td><a href="#" class="tablelink">æ¥ç</a>     <a href="#" class="tablelink"> å é¤</a></td>
        </tr> 
        
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>20130907</td>
        <td>æ¸©å·19åå°å­¦çä¸­æ¯æµé¼»è¡ç»­ï¼å¨è¾¹é¨åä¼ä¸å³å</td>
        <td></td>
        <td>å±±ä¸æµå</td>
        <td>2013-09-08 14:02</td>
        <td>æªå®¡æ ¸</td>
        <td><a href="#" class="tablelink">æ¥ç</a>     <a href="#" class="tablelink">å é¤</a></td>
        </tr>
        
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>20130906</td>
        <td>ç¤¾ç§é¢:çµå­åå¡ä¿è¿äºåæç»æµç»æåç¤¾ä¼è½¬å</td>
        <td>user</td>
        <td>æ±èæ é¡</td>
        <td>2013-09-07 13:16</td>
        <td>æªå®¡æ ¸</td>
        <td><a href="#" class="tablelink">æ¥ç</a>     <a href="#" class="tablelink">å é¤</a></td>
        </tr>
        
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>20130905</td>
        <td>æ±è¥¿&quot;å±é¿è¿è§å»ºè±ªå®&quot;ï¼å±é¿æ£è®¨</td>
        <td>admin</td>
        <td>åäº¬å¸</td>
        <td>2013-09-06 10:36</td>
        <td>å·²å®¡æ ¸</td>
        <td><a href="#" class="tablelink">æ¥ç</a>     <a href="#" class="tablelink">å é¤</a></td>
        </tr>
        
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>20130907</td>
        <td>æ¸©å·19åå°å­¦çä¸­æ¯æµé¼»è¡ç»­ï¼å¨è¾¹é¨åä¼ä¸å³å</td>
        <td></td>
        <td>å±±ä¸æµå</td>
        <td>2013-09-08 14:02</td>
        <td>æªå®¡æ ¸</td>
        <td><a href="#" class="tablelink">æ¥ç</a>     <a href="#" class="tablelink">å é¤</a></td>
        </tr>
    
        </tbody>
    </table>
    
   
  
    
    </div>  
       
	</div> 
 
	<script type="text/javascript"> 
      $("#usual1 ul").idTabs(); 
    </script>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
    
    
    
    
    
    </div>

</body>
</html>
