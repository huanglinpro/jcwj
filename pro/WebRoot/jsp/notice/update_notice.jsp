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
    
    <title>My JSP 'update_shoes.jsp' starting page</title>
    
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
		#header{
		/*border: 1px solid red;*/
		height: 150px;
		width: 100%;
		}
	h2{
		text-align: center;
		color: red;
		}
	</style>
	
  </head>
  
  <body>
    <div id="header">
		<div>
			<button class="btn btn-default btn-lg"><span class="glyphicon glyphicon-home"></span></button>
		</div>
		<h2>公告信息更新</h2>
	</div>
	<div id="inputuser">
	
		<form action="/pro/notice/updateNotice.action" class="form-horizontal" method="post">
		
			<div class="form-group">
				<label for="shoesId" class="col-sm-2 control-label">公告标题:</label>
				<div class="col-sm-10">
					<s:textfield type="text"   name="notice.title" class="form-control" id="title" />
				</div>
			</div>
			<div class="form-group">
				<label for="shoesName" class="col-sm-2 control-label">公告信息:</label>
				<div class="col-sm-10">
					<s:textfield type="text" name="notice.info" disabled="false" class="form-control" id="info" />
				</div>
			</div>
			<div class="form-group">
				<label for="ShoesUrl" class="col-sm-2 control-label">公告日期:</label>
				<div class="col-sm-10">
					<s:textfield type="text" name="notice.date" class="form-control" id="ShoesUrl" disabled="true"/>
				</div>
			</div>
			
			<div id="btn">
				<button type="submit" class="btn btn-primary" >提交</button>
				<button type="reset" class="btn btn-default"  >取消</button>
			</div>
		</form>
	</div>
  </body>
</html>
