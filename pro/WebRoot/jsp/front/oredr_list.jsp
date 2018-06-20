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
		function updateInfo(id){
		if(confirm("您确认商品已签收？")){
				location.href="<s:url namespace="/order" action="signReceive.action"/>?order.orId="+id;
				}
		}
		
		function removeInfo(id){
			if(confirm("您确认要取消订单？")){
				location.href="<s:url namespace="/order" action="cancleOrder.action"/>?order.orId="+id;
				}
		}

	</script>
  </head>
  
  <body>
   		<div id="header">
		<div>
			<button class="btn btn-default btn-lg"><span class="glyphicon glyphicon-home"></span></button>
		</div>
		<h2>订单详情</h2>
	</div>
	<table class="table table-hover table-striped">
	<%int i = 1; %>
	<tbody> 
	
	<s:iterator value="orderlist">
		<s:if test= " orState == 't'">
			<tr>
				<td><%=i++ %></td>
				<td>ordernumber<s:property value="orId"/></td>
				<td>
					<img src="<s:property value='orUrl'/>" alt="png">
				</td>
				<td><s:property value="orName"/></td>
				<td><s:property value="orprice"/></td>
				<td><s:property value="orNumber"/></td>
				<td>
					<s:if test=" orPayState == 't' ">已付款</s:if>
					<s:else> 代付款</s:else>
				</td>
				<td>
					<s:if     test=" orreceiverState == 'a' ">未发货</s:if>
					<s:elseif test=" orreceiverState == 'b' ">已发货</s:elseif>
					<s:elseif test=" orreceiverState == 'c' ">已签收</s:elseif>
					<s:else>丢失</s:else>
				</td>
				<td>
				<!-- 
					<s:if     test=" orcolor == 'a' ">灰色</s:if>
					<s:elseif test=" orcolor == 'b' ">蓝色</s:elseif>
					<s:elseif test=" orcolor == 'c' ">红色</s:elseif>
					<s:elseif test=" orcolor == 'd' ">橙色</s:elseif>
					<s:elseif test=" orcolor == 'e' ">黑色</s:elseif>
					<s:elseif test=" orcolor == 'f' ">紫色</s:elseif>
					<s:else>黄色</s:else>
				-->
				 	<c:if test="${orcolor == 'a' }">灰色</c:if>
					<c:if test="${orcolor == 'b' }">蓝色</c:if>
				    <c:if test="${orcolor == 'c' }">红色</c:if>
					<c:if test="${orcolor == 'd' }">黄色</c:if>
					<c:if test="${orcolor == 'e' }">黑色</c:if>
				    <c:if test="${orcolor == 'f' }">紫色</c:if>
					<c:if test="${orcolor == 'j' }">黄色</c:if>
				</td>
				<td><s:property value="orsize"/></td>
				<td>${orNumber * orprice }</td>
				<td><s:date name="orDatetime" format="yyyy-MM-dd"/></td>
				<td>
					<button class="btn btn-default btn-sm"  onclick = "updateInfo(<s:property value='orId'/>);">
					 	<span class="glyphicon glyphicon-pencil fix"/>
					</button>
					<button id="delb" class="btn btn-default btn-sm" onclick = "removeInfo(<s:property value='orId'/>);" >
						<span class="glyphicon glyphicon-trash del"/> 
					</button>
				</td>
			</tr>
		</s:if>
	</s:iterator>
	
	</tbody>
	<thead>
		<tr>
			<th>序号</th>
			<th>订单号</th>
			<th>图片</th>
			<th>商品名称</th>
			<th>单价</th>
			<th>数量</th>
			<th>支付状态</th>
			<th>快递状态</th>
			<th>颜色</th>
			<th>尺寸</th>
			<th>总价</th>
			<th>订单日期</th>
			<th>操作</th>
		</tr>
	</thead>
	</table>
  </body>
</html>
