<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'listpic.jsp' starting page</title>
    
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
    #header{
          text-align: center;
      }

    #info{
          color: #28AAE4;
          font-family: 宋体;
      }
      .contex{
          height: 500px;
          width: 600px;
          margin: 0 auto;
      }
      .butts{
        text-align: center;
      }
	
    </style>
	<link rel="stylesheet" href="bootstrap\css\bootstrap.min.css">

  </head>
  
  <body>
    <button type="button" class="btn btn-default" aria-label="Left Align" onclick="goback();">
      <span class="glyphicon glyphicon-home" aria-hidden="true"></span>
    </button>
   <div id="header">
       <h1 id= "info">轮播图展示</h1>
   </div>
   
  </body>
</html>
