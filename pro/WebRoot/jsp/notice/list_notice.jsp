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
    
    <title>My JSP 'list_shoes.jsp' starting page</title>
    
    <meta charset="utf-8"/>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="bootstrap\css\bootstrap.min.css">
	<script type="text/javascript" src="Jquery/jquery-3.2.1.js"></script>
	<style>
	.del{color: red;}
	.fix{color: green;}
	.info{color:#00BFFF;}
	td,th{
		text-align: center;
		vertical-align:middle;
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
	img{
		height: 80px;
		width:  90px;
	}
	
	</style>
	<script type="text/javascript">
		function removeInfo(title,id){
		if(confirm("您确认要删除编号为:"+id+"标题为:"+ title +"的公告？")){
				location.href="<s:url namespace="/notice" action="deleteNotice"/>?notice.id="+id;
				}
		}
		
		function updateInfo(title,id){
			if(confirm("您是否要修改编号为:"+id+"标题为:"+ title +"的公告？")){
				location.href="<s:url namespace="/notice" action="updateNotPage"/>?notice.id="+id;
				}
		}

	</script>
  </head>
  
  <body>
   		<div id="header">
		<div>
			<button 'class="btn btn-default btn-lg"><span class="glyphicon glyphicon-home"></span></button>
		</div>
		<h2>商品清单列表</h2>
	</div>
	<table class="table table-hover table-striped">
	<%int i = 1; %>
	<tbody>
	<s:iterator value="nlist">
		<tr>
			<td><%=i++ %></td>
			<td><s:property value="title"/></td>
			<td><s:property value="info"/></td>
			<td><s:date name="date" format="yyyy-MM-dd"/></td>
			<td>
				<button class="btn btn-default btn-sm"  onclick = "updateInfo('<s:property value="title"/>',<s:property value="id"/>);">
				 	<span class="glyphicon glyphicon-pencil fix"/>
				</button>
				<button id="delb" class="btn btn-default btn-sm" onclick = "removeInfo('<s:property value="title"/>',<s:property value='id'/>);" >
					<span class="glyphicon glyphicon-trash del"/> 
				</button>
			</td>
		</tr>
	</s:iterator>
	</tbody>
	<thead>
		<tr>
			<th>序号</th>
			<th>公告标题</th>
			<th>公告信息</th>
			<th>发布日期</th>
			<th>操作</th>
		</tr>
	</thead>
	</table>
  </body>
</html>
