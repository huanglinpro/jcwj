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
    
    <title>My JSP 'useri_nfo.jsp' starting page</title>
   
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
		td,th{
			text-align: center;
		}
		.headtext{
			text-align: center;
			color: blue;
		}
	</style>
	<script type="text/javascript">
		function remove(userId,userName){
		if(confirm("您确认要删除编号为:user"+userId+"用户名为"+userName+"的用户？")){
				location.href="<s:url namespace="/user" action="deleteUser"/>?user.userId="+userId;
				}
		}
		
		function  update(userId,userName){
		if(confirm("您确认要修改编号为:user"+userId+"用户名为"+userName+"的用户权限？")){
		 		location.href="<s:url namespace="/user" action="updateUser"/>?user.userId="+userId;
			}
		}
	</script>
  </head>
  
  <body>
    
   	<div class="headtext">
		<h1>用户列表</h1>
	</div>
	
		<table class="table table-striped table-hover">
			<tbody>
			<%int i = 1; %>
			<s:iterator value="userlist">
				<tr>
					<td><%= i++ %></td>
					<td><a href="#"><s:property value="'user' +userId"/></a> </td>
					<td><s:property value="userName"/></td>
					<td><s:property value="userRealName"/> </td>
					<td><s:property value="userPhone"/></td>
					<td><s:property value="userAddress"/></td>
					<td>					
					<s:if  test=" userPow == 't'">
					正常
					</s:if>
					<s:else>
					冻结
					</s:else>
					</td>
					<td>
						<button class="btn btn-info btn-sm"   onclick="update(<s:property value="userId"/>,'<s:property value="userName"/>');">修改状态</button>
						<button class="btn btn-danger btn-sm" onclick="remove(<s:property value="userId"/>,'<s:property value="userName"/>');">删除用户</button>
					</td>
				</tr>
			</s:iterator>
			</tbody>
			<thead>
				<tr>
					<th>序号</th>
					<th>编号</th>
					<th>用户名</th>
					<th>真实姓名</th>
					<th>电话</th>
					<th>地址</th>
					<th>状态</th>
					<th>操作</th>
				</tr>
			</thead>
		</table>
  </body>
</html>
