<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/jsp/commer/taglibs.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'input_user.jsp' starting page</title>
    
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
		#inputuser{
		height: 100%;
		width:68%;
		margin-left: auto;
		margin-right: auto; 	
		}
		#btn{
			height: 80px;
			width: 150px;
			margin-left: auto;
			margin-right: auto;
			/*border:solid red 1px;*/
		}
		#headtext{
			text-align: center;
			color: blue;
		}
	</style>

  </head>
  		
  <body>
	<div id="headtext">
		<h1>添加用户</h1>
	</div>

	<div id="inputuser">
		<form   action="/pro/user/addUser.action" class="form-horizontal" method="get">
			<div class="form-group">
				<label for="userName" class="col-sm-2 control-label">用户名:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="userName" name="user.userName" placeholder="请输入用户名">
				</div>
			</div>
			<div class="form-group">
				<label for="userRealName" class="col-sm-2 control-label">真实姓名:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="userRealName" name="user.userRealName" placeholder="请输入真实姓名">
				</div>
			</div>
			<div class="form-group">
				<label for="userPress" class="col-sm-2 control-label">登录密码:</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="userPress" name="user.singnPress" placeholder="请输入6位字符密码">
				</div>
			</div>
			<div class="form-group">
				<label for="rUserPress" class="col-sm-2 control-label">支付密码:</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="userReal" name="user.payPass" placeholder="请再次输入6位字符密码">
				</div>
			</div>
			<div class="form-group">
				<label for="userPhone" class="col-sm-2 control-label">电话:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="userPhone" name="user.userPhone" placeholder="请输入电话号码">
				</div>
			</div>
			<div class="form-group">
				<label for="userAddress" class="col-sm-2 control-label">地址:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="userAddress" name="user.userAddress" placeholder="请输入您的地址">
				</div>
			</div>
			
			<div id="btn">
				<button type="submit" class="btn btn-primary" >提交</button>
				<button type="reset" class="btn btn-default" >取消</button>
			</div>
		</form>
	</div>
	
  </body>
</html>
