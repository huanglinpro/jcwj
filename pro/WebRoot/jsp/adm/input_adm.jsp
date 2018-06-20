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
		<h1>添加管理员</h1>
	</div>
	
	<div id="inputuser">
		<form   action="<s:url namespace='/adm' action='addAdm' />" class="form-horizontal" method="post">
			<div class="form-group">
				<label for="admName" class="col-sm-2 control-label">用户名:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="admName" name="adm.admName" placeholder="请输入用户名">
				</div>
			</div>
			<div class="form-group">
				<label for="admRealName" class="col-sm-2 control-label">真实姓名:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="admRealName" name="adm.admRealName" placeholder="请输入真实姓名">
				</div>
			</div>
			<div class="form-group">
				<label for="admPress" class="col-sm-2 control-label">密码:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="admPress" name="adm.admPress" placeholder="请输入6位字符密码">
				</div>
			</div>
			<div class="form-group">
				<label for="rAdmPress" class="col-sm-2 control-label">确认密码:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="rAdmPress" name="rAdmPress" placeholder="请再次输入6位字符密码">
				</div>
			</div>
			<div class="form-group">
				<label for="admPhone" class="col-sm-2 control-label">电话:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="admPhone" name="adm.admPhone" placeholder="请输入电话号码">
				</div>
			</div>
			<div class="form-group">
				<label for="admEmail" class="col-sm-2 control-label">邮件:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="admEmail" name="adm.admEmail" placeholder="请输入您的邮箱">
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
