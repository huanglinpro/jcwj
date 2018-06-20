<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'adm_login.jsp' starting page</title>
    
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<link rel="stylesheet" href="bootstrap\css\bootstrap.min.css">
	<style>
		#contine{
			/*border: solid 1px red;*/
			width: 430px;
			height: 250px;
			/*position: absolute;*/
			margin:0 auto;
			background-color: #E0FFFF;
			border-radius: 7px;
		}
		h3{
			text-align: center;
			width: 430px;height: 30px;
			/*border: solid 1px blue ;*/
			padding-top: 0px;
			border-radius: 5px;
			color: #FFFFFF;
			background-color: #00BFFF;
		}
		body{
		/*	background-color: #FFFFE0;*/
		}
	</style>

  </head>
  
  <body>
   	<div id="contine">
		<div>
			<h3>欢迎登录本系统</h3>
		</div>
		<form class="form-horizontal" action="/pro/login/loginSys.action" method="post">
		  <div class="form-group">
		    <label for="userName" class="col-sm-3 control-label">用户名:</label>
		    <div class="col-sm-9">
		      <input type="text" class="form-control" id="userName" name="admName" placeholder="请输入用户名">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="password" class="col-sm-3 control-label">密码:</label>
		    <div class="col-sm-9">
		      <input type="password" class="form-control" id="password" name="passWoeld" placeholder="请输入4-6位密码">
		    </div>
		  </div>
		  <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">
		      <div class="checkbox">
		        <label>
		          <input type="checkbox"> 记住密码
		        </label>
		      </div>
		    </div>
		  </div>
		  <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">
		      <button type="submit" class="btn btn-info">登录</button>
		    </div>
		  </div>
		</form>
	</div>
  </body>
</html>
