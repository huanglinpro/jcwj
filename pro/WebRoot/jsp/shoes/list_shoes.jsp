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
		function removeShoes(shoesId,shoesName){
		if(confirm("您确认要删除编号为:shoes"+shoesId+"用户名为"+shoesName+"的用户？")){
				location.href="<s:url namespace="/shoes" action="deleteShoes"/>?shoes.shoesId="+shoesId;
				}
		}
		
		function  updateShoes(shoesId,shoesName){
		if(confirm("您确认要修改编号为:shoes"+shoesId+"用户名为"+shoesName+"的用户权限？")){
		 		location.href="<s:url namespace="/shoes" action="toUpdatePage"/>?shoes.shoesId="+shoesId;
			}
		}
		
		function detail(){
				location.href="<s:url namespace="/shoes" action="findShoes"/>?shoes.shoesId="+shoesId;
		}

	</script>
  </head>
  
  <body>
   		<div id="header">
		<div>
			<button class="btn btn-default btn-lg"><span class="glyphicon glyphicon-home"></span></button>
		</div>
		<h2>商品清单列表</h2>
	</div>
	<table class="table table-hover table-striped">
	<%int i = 1; %>
	<tbody>
	<s:iterator value="slist">
		<tr>
			<td><%=i++ %></td>
			<td> <img src="<s:property value='ShoesUrl' />" alt="png"></td>
			<td><s:property value="'shoes'+shoesId"/></td>
			<td><s:property value="shoesName"/></td>
			<td><s:property value="nub"/></td>
			<td><s:property value="shoesPrise"/></td>
			<td>
				<button class="btn btn-default btn-sm" onclick="updateShoes(<s:property value="shoesId"/>,'<s:property value="shoesName"/>');">
				 	<span class="glyphicon glyphicon-pencil fix"/>
				</button>
				<button class="btn btn-default btn-sm" onclick="detail()"> 
					<span class="glyphicon glyphicon-signal info"/>
				</button>
				<button id="delb" class="btn btn-default btn-sm" onclick="removeShoes(<s:property value="shoesId"/>,'<s:property value="shoesName"/>');" >
					<span class="glyphicon glyphicon-trash del"/> 
				</button>
			</td>
		</tr>
	</s:iterator>
	</tbody>
	<thead>
		<tr>
			<th>序号</th>
			<th>商品图片</th>
			<th>商品编号</th>
			<th>商品名称</th>
			<th>商品库存</th>
			<th>商品价格</th>
			<th>操作</th>
		</tr>
	</thead>
	</table>
  </body>
</html>
