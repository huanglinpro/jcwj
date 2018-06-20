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
		<h2>添加鞋子</h2>
	</div>
	<div id="inputuser">
	
		<form action="/pro/shoes/addShoes.action" class="form-horizontal" method="post">
		
			<div class="form-group">
				<label for="userName" class="col-sm-2 control-label">鞋子编号:</label>
				<div class="col-sm-10">
					<s:textfield type="text" name="shoes.shoesId" class="form-control" id="shoes" placeholder="请输入六位以内数字编号"/>
				</div>
			</div>
			<div class="form-group">
				<label for="userName" class="col-sm-2 control-label">鞋子名称:</label>
				<div class="col-sm-10">
					<s:textfield type="text" name="shoes.shoesName" class="form-control" id="shoes" placeholder="请输入"/>
				</div>
			</div>
			<div class="form-group">
				<label for="userRealName" class="col-sm-2 control-label">图片地址:</label>
				<div class="col-sm-10">
					<s:textfield type="text" name="shoes.ShoesUrl" class="form-control" id="userName" placeholder="请输入用户姓名"/>
				</div>
			</div>
			<div class="form-group">
				<label for="userPress" class="col-sm-2 control-label">价格:</label>
				<div class="col-sm-10">
					<s:textfield type="text" name="shoes.shoesPrise" class="form-control" id="shoes" placeholder="请输入商品价格"/>
				</div>
			</div>
			
			<div class="form-group">
				<label for="rUserPress" class="col-sm-2 control-label">尺寸:</label>
				<div class="col-sm-10">
					<s:textfield type="text" name="shoes.shoesSize" class="form-control" id="shoes" placeholder="请输入鞋子尺寸"/>
				</div>
			</div>
			<div class="form-group">
				<label for="userPhone" class="col-sm-2 control-label">颜色:</label>
				<div class="col-sm-10">
					<s:textfield type="text" name="shoes.shoesColor" class="form-control" id="shoes" placeholder="请输入鞋子颜色"/>
				</div>
			</div>
			<div class="form-group">
				<label for="userAddress" class="col-sm-2 control-label">用户群体:</label>
				<div class="col-sm-10">
					<s:radio list="#{'m':'男性鞋子','f':'女性鞋子'}" name="shoes.shoesSex"></s:radio>	
				</div>
			</div>
			<div class="form-group">
				<label for="userPhone" class="col-sm-2 control-label">品牌:</label>
				<div class="col-sm-10">
					<s:textfield type="text" name="shoes.shoesBrand" class="form-control" id="shoes" placeholder="请输入鞋子品牌"/>
				</div>
			</div>
			<div class="form-group">
				<label for="userPhone" class="col-sm-2 control-label">风格:</label>
				<div class="col-sm-10">
					<s:textfield type="text" name="shoes.shoesStyle" class="form-control" id="shoes" placeholder="请输入鞋子风格"/>
				</div>
			</div>
			<div class="form-group">
				<label for="userPhone" class="col-sm-2 control-label">产地:</label>
				<div class="col-sm-10">
					<s:textfield type="text" name="shoes.shoesOrign" class="form-control" id="shoes" placeholder="请输入鞋子产地"/>
				</div>
			</div>
			<div class="form-group">
				<label for="userPhone" class="col-sm-2 control-label">库存:</label>
				<div class="col-sm-10">
					<s:textfield type="text" name="shoes.nub" class="form-control" id="shoes" placeholder="请输入现在库存"/>
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
