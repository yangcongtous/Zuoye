<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <script type="text/javascript" src="jquery-1.7.2.min.js"></script>
  <script>
  function checksession(){
   alert("sad");
   alert(window.location.href);
   $.ajax({
   
   type:"post",//请求方式
   url:"checksession",//发送请求地址
   async:false,
   success:function(data){
    if(data=="false"){
   alert("还未登陆");

   }
   else{
   alert("已登录！");
   }
    
   }
   
   });

  }
  function checksession2(){
  alert("asasd");
  }
 </script>

  </head>
  
  <body>
    <div id="title" style="margin-left:20%;width:60%;height:30px;border:1px red solid;float:left"><span>任务标题：${Demo1.tasktitle}</span></div>
    <div style="margin-top:30px;margin-left:20%;width:60%;height:30px;border:1px red solid;float:left">任务内容：</div>
    <div id="content" style="margin-left:20%;margin-top:10px;width:60%;height:500px;border:1px red solid;float:left">
   ${Demo1.taskcontent}
   </div>
   <input type="button" value="接受任务" onClick="checksession()">
  </body>
</html>
