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
		<h2>更新鞋子信息</h2>
	</div>
	<div id="inputuser">
	
		<form action="/pro/shoes/updateShoes.action" class="form-horizontal" method="post">
		
			<div class="form-group">
				<label for="shoesId" class="col-sm-2 control-label">鞋子编号:</label>
				<div class="col-sm-10">
					<s:textfield type="text" disabled="true"  name="shoes.shoesId" class="form-control" id="shoesId" />
				</div>
			</div>
			<div class="form-group">
				<label for="shoesName" class="col-sm-2 control-label">鞋子名称:</label>
				<div class="col-sm-10">
					<s:textfield type="text" name="shoes.shoesName" disabled="false" class="form-control" id="shoesName" />
				</div>
			</div>
			<div class="form-group">
				<label for="ShoesUrl" class="col-sm-2 control-label">图片地址:</label>
				<div class="col-sm-10">
					<s:textfield type="text" name="shoes.ShoesUrl" class="form-control" id="ShoesUrl"/>
				</div>
			</div>
			<div class="form-group">
				<label for="shoesPrise" class="col-sm-2 control-label">价格:</label>
				<div class="col-sm-10">
					<s:textfield type="text" name="shoes.shoesPrise" class="form-control" id="shoesPrise" />
				</div>
			</div>
			
			<div class="form-group">
				<label for="shoesSize" class="col-sm-2 control-label">尺寸:</label>
				<div class="col-sm-10">
					<s:textfield type="text" name="shoes.shoesSize" class="form-control" id="shoesSize" />
				</div>
			</div>
			<div class="form-group">
				<label for="shoesColor" class="col-sm-2 control-label">颜色:</label>
				<div class="col-sm-10">
					<s:textfield type="text" name="shoes.shoesColor" class="form-control" id="shoesColor" />
				</div>
			</div>
			<div class="form-group">
				<label for="shoesSex" class="col-sm-2 control-label">用户群体:</label>
				<div class="col-sm-10">
					<!--<s:textfield type="radio" name="shoes.shoesSex" class="form-control" id="shoesSex" value="m" >男</s:textfield>
					<s:textfield type="radio" name="shoes.shoesSex" class="form-control" id="shoesSex0" value="f" >女</s:textfield>-->
					<s:radio list="#{'m':'男性鞋子','f':'女性鞋子'}" name="shoes.shoesSex"></s:radio>		
				</div>
			</div>
			<div class="form-group">
				<label for="shoesBrand" class="col-sm-2 control-label">品牌:</label>
				<div class="col-sm-10">
					<s:textfield type="text" name="shoes.shoesBrand" class="form-control" id="shoesBrand" />
				</div>
			</div>
			<div class="form-group">
				<label for="shoesStyle" class="col-sm-2 control-label">风格:</label>
				<div class="col-sm-10">
					<s:textfield type="text" name="shoes.shoesStyle" class="form-control" id="shoesStyle" />
				</div>
			</div>
			<div class="form-group">
				<label for="shoesOrign" class="col-sm-2 control-label">产地:</label>
				<div class="col-sm-10">
					<s:textfield type="text" name="shoes.shoesOrign" class="form-control" id="shoesOrign" />
				</div>
			</div>
			<div class="form-group">
				<label for="shoesnub" class="col-sm-2 control-label">库存:</label>
				<div class="col-sm-10">
					<s:textfield type="text" name="shoes.nub" class="form-control" id="shoesnub" />
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
