<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.extremecomponents.org" prefix="ec"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 <script type="text/javascript" src="jquery-1.7.2.min.js"></script>
	<style type="text/css">
body {
 margin: 0px;padding:0
}
#div1 {
 display: none;
 position: absolute;
 z-index: 1000;
 height: 100%;
 width: 100%;
 background: #000000;
 filter:Alpha(opacity=30);
}
#div2 {
 display: none;
 position: absolute;
 height: 100%;
 width: 100%;
 padding-top: 10%;
 z-index: 1001;
 left: 0px;
 top: 0px;
}
.eXtremeTable {
	margin: 0;
	padding: 0;
}

.eXtremeTable select {
	font-family: Verdana;
	font-size: 9px;
	border: solid 1px #EEE;
	width: 75px;
}

.eXtremeTable .tableRegion {
	border: 1px solid silver;
	padding: 2px;
	font-family:Verdana;
	font-size: 10px;
	margin-top: 7px;
}

.eXtremeTable .filter {
	background-color: #efefef;
}

.eXtremeTable .filter input {
	font-family: Verdana;
	font-size: 10px;
	width: 100%;
}

.eXtremeTable .filter select {
	font-family: Verdana;
	font-size: 9px;
	border: solid 1px #EEE;
	width: 100%;
}

.eXtremeTable .tableHeader {
	background-color: #308dbb;
	color: white;
	font-family:Verdana;
	font-size: 11px;
	font-weight: bold;
	text-align: left;
	padding-right: 3px;
	padding-left: 3px;
	padding-top: 4;
	padding-bottom: 4;
	margin: 0;
	border-right-style: solid;
	border-right-width: 1px;
	border-color: white;
}

.eXtremeTable .tableHeaderSort {
	background-color: #3a95c2;
	color: white;
	font-family:Verdana;
	font-size: 11px;
	font-weight: bold;
	text-align: left;
	padding-right: 3px;
	padding-left: 3px;
	padding-top: 4;
	padding-bottom: 4;
	border-right-style: solid;
	border-right-width: 1px;
	border-color: white;
}

.eXtremeTable .odd a, .even a {
	color: Black;
	font-size: 10px;
}

.eXtremeTable .odd td, .eXtremeTable .even td {
	padding-top: 2px;
	padding-right: 3px;
	padding-bottom: 2px;
	padding-left: 3px;
	vertical-align: middle;
	font-family:Verdana;
	font-size: 10px;
}

.eXtremeTable .odd {
	background-color: #FFFFFF;
}

.eXtremeTable .even {
  	background-color: #dfe4e8;
}

.eXtremeTable .highlight td {
	color: black;
	font-size: 10px;
	padding-top: 2px;
	padding-right: 3px;
	padding-bottom: 2px;
	padding-left: 3px;
	vertical-align: middle;
	background-color: #fdecae;
}

.eXtremeTable .highlight a, .highlight a {
	color: black;
	font-size: 10px;
}

.eXtremeTable .toolbar {
	background-color: #F4F4F4;
	font-family:Verdana;
	font-size: 9px;
	margin-right: 1px;
	border-right: 1px solid silver;
	border-left: 1px solid silver;
	border-top: 1px solid silver;
	border-bottom: 1px solid silver;
}

.eXtremeTable .toolbar td {
	color: #444444;
	padding: 0px 3px 0px 3px;
	text-align:center;
}

.eXtremeTable .separator {
	width: 7px;
}

.eXtremeTable .statusBar {
	background-color: #F4F4F4;
	font-family:Verdana;
	font-size: 10px;
}

.eXtremeTable .filterButtons {
	background-color: #efefef;
	text-align: right;
}

.eXtremeTable .title {
	color: #444444;
	font-weight: bold;
	font-family:Verdana;
	font-size: 15px;
	vertical-align: middle;
}

.eXtremeTable .title span {
	margin-left: 7px;
}

.eXtremeTable .formButtons {
	display: block;
	margin-top: 10px;
	margin-left: 5px;
}

.eXtremeTable .formButton {
	cursor: pointer;
	font-family:Verdana;
	font-size:10px;
	font-weight: bold;
	background-color: #308dbb;
	color: white;
	margin-top: 5px;
	border: outset 1px #333;
	vertical-align: middle;
}

.eXtremeTable .tableTotal {
	background-color: #FFFFFF;
	border-top: solid 1px Silver;	
}

.eXtremeTable .tableTotalEmpty {
	background-color: #FFFFFF;	
}
</style>
<script>
function select_all(){
	var c=document.all;
	for(var i=0;i<=c.length;i++)
	if(c[i].type=="checkbox")
	c[i].checked=true;
	}
 function deselect_all(){
	var c=document.all;
	if(c[i].type=="checkbox")
	c[i].checked=false;
	}	
function openme(){
document.getElementById('div1').style.display='block';
document.getElementById('div2').style.display='block';
}
function closeme(){
document.getElementById('div1').style.display='none';
document.getElementById('div2').style.display='none';
}
function login(){
   
   $.ajax({
   type:"post",//请求方式
  url:"servlet/login",//发送请求地址
   data:{//发送给数据库的数据
   username:$("#username").val(),
   password:$("#password").val()
   },
   dataType:'json',
   //请求成功后的回调函数有两个参数
   success:function(json){
    if(json!=1){
   alert("欢迎回来"+json);
   document.getElementById("login2").innerHTML=json;
   document.getElementById("login2").href="page/userzone.jsp";
   }
   else{
   alert("用户名不存在或密码错误，请重新登陆！");
   }
    
   }
   
   });
   closeme();
}
</script>
  </head>
  
  <body>
  <a href="page/userzone.jsp">test</a>
    <div style="width:200px;height:20px;float:right"><a id="login2" href="javascript:openme()">登陆</a>&nbsp&nbsp|&nbsp&nbsp<a href="page/zhuce.jsp">注册</a></div>
    <div id="main" style="margin-left:20%;width:60%;height:500px;border:1px red solid;float:right;margin-top:30px">
     <c:if test="${not empty Demo2}">
  				<div>
  	
 <ec:table
    items="Demo2" var="Demo2"
    action="${pageContext.request.contextPath}/servlet/findall"
    imagePath="${pageContext.request.contextPath}/images/table/*.gif"
    cellpadding="1">
<ec:row highlightRow="true">
<ec:column property="mycheckbox" sortable="false" title="选项"
				filterable="false" width="10%">
				<input type="checkbox" name="mycheckbox"
					value="${Demo2.taskid}" id="mycheckbox" />
			</ec:column>
<ec:column property="taskid" title="新闻ID"/>
<ec:column property="tasktitle" title="新闻类型"/>
<ec:column property="taskcontent" title="新闻内容"/>
			<ec:column property="do" title="操作" width="" filterable="false"
				sortable="false">
			<a class="ec"href="servlet/singlenews?taskid=${Demo2.taskid}" title="详情">详情</a>               
			</ec:column>
</ec:row>
</ec:table>

  	</div>
  </c:if>
    
    
    
    
    
    
    
    
    
    
    </div>
  <div id="div1"></div>
<div id="div2">
<table width="30%" border="0" cellpadding="3" cellspacing="1" style="background: #ff7300; position:static;filter:progid:DXImageTransform.Microsoft.DropShadow(color=#666666,offX=4,offY=4,positives=true)" align="center">
  <tr id="m_tr">
    <td><font color="#FFFFFF">欢迎登陆：</font></td>
    <td align="right">
 <input type="button" value="ｘ" onClick="closeme()" style="cursor: hand;">
 </td>
  </tr>
  <tr>
<form name="myform"  method="post" action="servlet/login" >
    <td colspan="2" width="100%" bgcolor="#FFFFFF" height="150">
  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp用户名: <input type="text" name="username" id="username" size="10" style="width:150px"></br>
  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp密码:&nbsp&nbsp&nbsp&nbsp&nbsp<input type="password" name="password" id="password" size="12" style="width:150px">
  <br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="button" name="logoin" value="登陆" onClick="login()" > 
      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="button" name="exit" value="取消" onClick="closeme()">
 </td>
</form>
  </tr>
</table>
</div>
  </body>
</html>
