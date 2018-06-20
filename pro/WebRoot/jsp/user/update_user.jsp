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
    
    <title>My JSP 'update_user.jsp' starting page</title>
    
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
		#headtext{
			text-align: center;
			color: blue;
		}
		#updateform{
			height: 100%;
			width:68%;
			margin-left: auto;
			margin-right: auto; 	
		}
		#btn{
			height: 80px;
			width: 250px;
			margin-left: auto;
			margin-right: auto;
			/*border:solid red 1px;*/
		}
	</style>

  </head>
  
  <body>
<div id="headtext">
		<h1>修改用户信息</h1>
	</div>
	<div id="updateform">
		<form action="/pro/user/updateInfo.action" class="form-horizontal" method="post">
			<s:textfield type="hidden"   name="user.userId" class="form-control" id="userName"></s:textfield>
			<input type="hidden" name="user.userPress" id="userPress" value="asd">
			<input type="hidden" name="user.payPasss" id="userPress" value="asd">
			<div class="form-group">
				<label for="userName" class="col-sm-2 control-label">用户名:</label>
				<div class="col-sm-10">
					<s:textfield type="text"   name="user.userName" class="form-control" id="userName"></s:textfield>
				</div>
			</div>
			<div class="form-group">
				<label for="userRealName" class="col-sm-2 control-label">真实姓名:</label>
				<div class="col-sm-10">
					<s:textfield type="text"  name="user.userRealName"  class="form-control" id="userRealName"></s:textfield>
				</div>
			</div>
			
			<div class="form-group">
				<label for="userPhone" class="col-sm-2 control-label">电话:</label>
				<div class="col-sm-10">
					<s:textfield type="text"  name="user.userPhone"  class="form-control" id="userPhone"></s:textfield>
				</div>
			</div>
			<div class="form-group">
				<label for="userAddress" class="col-sm-2 control-label">地址:</label>
				<div class="col-sm-10">
					<s:textfield type="text"  class="form-control" id="userAddress" name="user.userAddress"></s:textfield>
				</div>
			</div>
			
			<div id="btn">
				<button type="submit" class="btn btn-primary" >保存修改</button>
				<button type="reset" class="btn btn-default" >取消修改</button>
			</div>
		</form>
	</div>
  </body>
</html>
