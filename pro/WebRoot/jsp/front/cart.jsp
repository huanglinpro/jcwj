<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'cart.jsp' starting page</title>
    
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery-1.11.0.min.js"></script>
	<!-- Custom Theme files -->
	<!--theme-style-->
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
	<!--//theme-style-->
	<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!--fonts-->
	<!-- 
	<link href='http://fonts.useso.com/css?family=Alegreya+Sans+SC:100,300,400,500,700,800,900,100italic,300italic,400italic,500italic,700italic,800italic,900italic' rel='stylesheet' type='text/css'>
	<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'> -->
	<!--//fonts-->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
						jQuery(document).ready(function($) {
							$(".scroll").click(function(event){		
								event.preventDefault();
								$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
							});
						});
					</script>	
	<!-- start menu -->
	<script src="js/simpleCart.min.js"> </script>
	<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
	<script type="text/javascript" src="js/memenu.js"></script>
	<script>$(document).ready(function(){$(".memenu").memenu();});</script>		
	<style>
		#cartstyle{
			height: 40px;
			width: 1110px;
			border: solid 1px #8B4513;
			text-align: center;
			border-radius: 6px;
			
		}
	</style>

  </head>
  
  <body>
    	<!--top-header-->
	<div class="top-header">
	<div class="container">
		<div class="top-header-main">
			<div class="col-md-4 top-header-left">
				<div class="search-bar">
					<input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
					<input type="submit" value="">
				</div>
			</div>
			<div class="col-md-4 top-header-middle">
				<a href="index.html"><img src="images/logo-4.png" alt="" /></a>
			</div>
			<div class="col-md-4 top-header-right">
				<div class="cart box_1">
						<a href="checkout.html">
						<h3> <div class="total">
							<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</div>
							<img src="images/cart-1.png" alt=""/></h3>
						</a>
						<p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
						<div class="clearfix"> </div>
					</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!--top-header-->
<!--bottom-header-->
	<div class="header-bottom">
		<div class="container">
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--bottom-header-->
	<!--start-breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="/pro/jsp/front/front_index.jsp">Home Page</a></li>
					<li class="active">Checkout</li>
				</ol>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->
	<!--start-ckeckout-->
	<div class="ckeckout">
		<div class="container">
			<div class="ckeckout-top">
			<div class=" cart-items heading">
				<div id="cartstyle"><h3 style="color:rgb(94, 56, 23)">我的购物车</h3></div>
			 
				<script>$(document).ready(function(c) {
					$('.close1').on('click', function(c){
						$('.cart-header').fadeOut('slow', function(c){
							$('.cart-header').remove();
						});
						});	  
					});
			   </script>
			<script>$(document).ready(function(c) {
					$('.close2').on('click', function(c){
						$('.cart-header1').fadeOut('slow', function(c){
							$('.cart-header1').remove();
						});
						});	  
					});
			   </script>
			   <script>$(document).ready(function(c) {
					$('.close3').on('click', function(c){
						$('.cart-header2').fadeOut('slow', function(c){
							$('.cart-header2').remove();
						});
						});	  
					});
			   </script>
				
			<div class="in-check" >
				<ul class="unit">
					<li><span>条目</span></li>
					<li><span>商品名称</span></li>		
					<li><span>商品价格</span></li>
					<li><span>商品状态</span></li>
					<li> </li>
					<div class="clearfix"> </div>
				</ul>
				<ul class="cart-header">
					<div class="close1"> </div>
						<li class="ring-in"><a href="single.html" ><img src="images/s-1.jpg" class="img-responsive" alt=""></a>
						</li>
						<li><span>Woo Dress</span></li>
						<li><span>290.00</span></li>
						<li><span>在售</span></li>
						<li> <a href="single.html" class="add-cart cart-check">购买</a></li>
					<div class="clearfix"></div>
				</ul>
				<ul class=" cart-header1">
					<div class="close2"> </div>
						<li class="ring-in"><a href="single.html" ><img src="images/s-2.jpg" class="img-responsive" alt=""></a>
						</li>
						<li><span>Elliot Shoes</span></li>
						<li><span>300.00</span></li>
						<li><span>在售</span></li>
						<li> <a href="single.html" class="add-cart cart-check">购买</a></li>
						<div class="clearfix"> </div>
				</ul>
				<ul class="cart-header2">
					<div class="close3"> </div>
						<li class="ring-in"><a href="single.html" ><img src="images/s-4.jpg" class="img-responsive" alt=""></a>
						</li>
						<li><span>Woo Dress</span></li>
						<li><span>360.00</span></li>
						<li><span>在售</span></li>
						<li> <a href="single.html" class="add-cart cart-check">购买</a></li>
						<div class="clearfix"> </div>
				</ul>
			</div>
			</div>  
		 </div>
		</div>
	</div>
	
	<div class="footer-text">
		<div class="container">
			<div class="footer-main">
				<p class="footer-class">Copyright &copy; 2018.3.15 create by huanglin.<a target="#home" href="#">鞋品在线交易平台;</a></p>
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
	<!--end-footer-text-->	
  </body>
</html>
