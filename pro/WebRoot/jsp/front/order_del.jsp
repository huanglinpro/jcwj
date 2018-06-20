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
    
    <title>My JSP 'addshoes.jsp' starting page</title>
    
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery-1.11.0.min.js"></script>
	<!-- Custom Theme files -->
	<!--theme-style-->
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
	<!--//theme-style-->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Free Style Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!--fonts-->
	<link href='http://fonts.useso.com/css?family=Alegreya+Sans+SC:100,300,400,500,700,800,900,100italic,300italic,400italic,500italic,700italic,800italic,900italic' rel='stylesheet' type='text/css'>
	<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
	<!--//fonts-->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
						jQuery(document).ready(function($) {
							$(".scroll").click(function(event){		
								event.preventDefault();
								$('html,body').animate({scrollTop:$(this.hash).offset().top},10);
							});
						});
					
	</script>	
	
	<script type="text/javascript">
						var flg = false;
						function gotodel(){
							var inpass = document.getElementById("ispass").value;
							var pas = '<%= session.getAttribute("userPaypass") %>';
							if(inpass === pas)
								flg = true;
							else 
								flg = false;
						};
						
						function confinpass(){
							if(flg)
							return true;
							else  
							return false;
							
						};
	
	</script>
	<!-- start menu -->
	<script src="js/simpleCart.min.js"> </script>
	<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
	<script type="text/javascript" src="js/memenu.js"></script>
	<script>$(document).ready(function(){$(".memenu").memenu();});</script>
	<style>
		.receive{
		
		  height: 150px;
                width: 480px;
                border: 2px solid red;
		
		}
	</style>

  </head>
  
  <body>
  	<div id="fisrstart">
		<span class="glyphicon glyphicon-user"></span> &nbsp;&nbsp;
		<span style="color:#804038;">欢迎使用，
			<s:if test="null == #session.username || #session.username.isEmpty() " >
				<span class="username">
					<a href="jsp/user_login.jsp" id="un">登录</a>
				</span>
				&nbsp;&nbsp;&nbsp;
				<span>
					<a href="/pro/jsp/user/input_user.jsp">马上注册！</a> 
				</span>
			</s:if> 
			<s:else>
				<span id="username">
						<a href="jsp/user_login.jsp" id="un"><s:property value="#session.username" /></a>
				</span>	
				&nbsp;&nbsp;&nbsp;
				<span id="username">
						<a href="<s:url namespace='/login' action='userLogOut' />" style="color:red;" >退出登录</a>
				</span>	
				
			</s:else>			
		</span>
	</div>
    	<!--top-header-->
	<div class="top-header">
		<div class="container">
			<div class="top-header-main">
				<div class="col-md-4 top-header-left"></div>
				<div class="col-md-4 top-header-middle">
					<a href="index.html"><img src="images/logo-4.png" alt="" /></a>
				</div>
				<div class="col-md-4 top-header-right">
					<div class="cart box_1"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>

	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					
				</ol>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->
	<!--start-single-->
	<div class="single contact">
		<div class="container">
			<div class="single-main">
				<div class="col-md-9 single-main-left">
				<div class="sngl-top">
				<div class="col-md-5 single-top-left">	
						<div class="flexslider">
							<ul class="slides">
							
								<li data-thumb="<s:property value='shoes.ShoesUrl'/>">
									<img src="<s:property value='shoes.ShoesUrl'/>" />
								</li>
							
							</ul>
						</div>
	
			<script defer src="js/jquery.flexslider.js"></script>
			<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

		<script>
			// Can also be used with $(document).ready()
			$(window).load(function() {
			  $('.flexslider').flexslider({
			    animation: "slide",
			    controlNav: "thumbnails"
			  });
			});
		</script>
				</div>	
				<div class="col-md-7 single-top-right">
					
						<div class="details-left-info simpleCart_shelfItem">
							<h2 style="color: #8B4513"><s:property value="shoes.shoesName"/></h2> 
							<div>
								<h4>库存: <span style="color:#FF0000"><s:property value="shoes.nub"/>/双</span></h4>
							</div>
							<div>
								<h4>单价:
									<span class="actual item_price"><s:property value="shoes.shoesPrise"/>￥</span><a href="#"></a>
								</h4>	
							</div>
							<div>
								<h4 class="quick">产地: &nbsp;&nbsp;<span style="color:#FF0000;"><s:property value="shoes.shoesOrign" /></span></h4>
							</div>
							
							<ul class="product-colors">
								<h4>颜色:
									<span style="color:#FF0000">
										<c:if test="${color == 'a' }">灰色</c:if>
										<c:if test="${color == 'b' }">蓝色</c:if>
										<c:if test="${color == 'c' }">红色</c:if>
										<c:if test="${color == 'd' }">黄色</c:if>
										<c:if test="${color == 'e' }">黑色</c:if>
										<c:if test="${color == 'f' }">紫色</c:if>
										<c:if test="${color == 'j' }">黄色</c:if>
									</span>
								</h4>
								<div class="clear"> </div>
							</ul>
							<ul class="size">
								<h4>尺寸:
									<span style="color:#FF0000">
									<s:property value="size"/>
									</span>
								</h4>
								 
							</ul>
							<div class="quantity_box">
								<h4>数量:
									<span style="color:#FF0000"><%=request.getParameter("number") %> </span>
								</h4>
							</div>
							<div id="quantity_box">
								<h4>待付款:
									<span class="actual item_price">${number*shoes.shoesPrise}￥</span>
								</h4>
							</div>
						 <form action="/pro/shoes/orderList.action" method="get" onsubmit="return confinpass();" >
								<input type="hidden" name="shoes.shoesId" value="<s:property value='shoes.shoesId'/>">
							    <input type="hidden" name="number" value="${number }">
							    <input type="hidden" name="size" value="${size }">
							    <input type="hidden" name="color" value="${color }">
							<!-- 
							    <input type="hidden" name="sum" value="${number*shoes.shoesPrise}">
							 -->
								<div>
									 <input type="password" placeholder="请输入支付密码" name="paypass"  id="ispass" maxlength="6">
								</div>
								<div class="single-but item_add">
									<button class="btn btn-primary" type="submit" onclick="gotodel();">确认付款</button>
								</div>
						   </form>
				</div>
			
		</div>
		<div class="clearfix"></div>
	</div>

	<!--end-footer-->
	<!--end-footer-text-->
	<div class="footer-text">
	
		<div class="container">
			<div class="footer-main">
				<p class="footer-class">Copyright &copy; 2018.3.15 create by huanglin.
					<a target="#home" href="#">鞋品在线交易平台;</a>
				</p>
			</div>
		</div>
		<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	</div>
  </body>
</html>
