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
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery-1.11.0.min.js"></script>
	<!-- Custom Theme files -->
	<!--theme-style-->
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
	
	<!--//theme-style-->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Free Style Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!--fonts--><!-- 
	<link href='http://fonts.useso.com/css?family=Alegreya+Sans+SC:100,300,400,500,700,800,900,100italic,300italic,400italic,500italic,700italic,800italic,900italic' rel='stylesheet' type='text/css'>
	<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
	 -->
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
	<!-- start menu -->
	<script src="js/simpleCart.min.js"> </script>
	<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
	<script type="text/javascript" src="js/memenu.js"></script>
	<script>
		$(document).ready(function(){$(".memenu").memenu();});
		
		var color = $("input[name='color']:checked").val();
		
		//function cofin(shoeid) {
		//location.href = "<s:url namespace="/shoes" action="orderDels"/>?shoes.shoesId="+shoeid;
		//console.log("OK"+color);
		//alter("OK");
	}
		
	</script>

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
							<a href="jsp/user_login.jsp" style="color:red;" >退出登录</a>
					</span>	
					
				</s:else>			
			 </span>
		</div>
    	<!--top-header-->
	<div class="top-header">
	
	<div class="container">
	
		<div class="top-header-main"><!-- 
			<div class="col-md-4 top-header-left">
				<div class="search-bar">
					<input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
					<input type="submit" value="">
				</div>
			</div> -->
			<div class="col-md-4 top-header-middle">
				<a href="index.html"><img src="images/logo-4.png" alt="" /></a>
			</div>
			<div class="col-md-4 top-header-right">
				<div class="cart box_1">
						<a href="checkout.html">
						 <h3> <div class="total">
							 <span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</div>
							 <img src="images/cart-1.png" alt=""/>
						 </h3>
						</a>
						<p><a href="javascript:;" class="simpleCart_empty">清空购物车</a></p>
						<div class="clearfix"></div>
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
			<div class="top-nav">
				<ul class="memenu skyblue">
					<li class="active">
						<a href="<s:url namespace='/shoes' action='frontShoes.action' ></s:url>">首页</a>
					</li>
					<li class="grid">
						<a href="#">男生</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>人群</h4>
									<ul>
										<li>
											<a href="/pro/shoes/frontShoes.action">最新款</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">青年</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">孩童</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">中年</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">老人</a>
										</li>
				
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>风格</h4>
									<ul>
										<li>
											<a href="/pro/shoes/frontShoes.action">休闲鞋</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">跑步鞋</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">帆布鞋</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">板鞋</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">足球鞋</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">篮球鞋</a>
										</li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>品牌</h4>
									<ul>
										<li>
											<a href="/pro/shoes/frontShoes.action">Levis</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">Persol</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">Nike</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">Edwin</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">New Balance</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">Jack & Jones</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">Paul Smith</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">Ray-Ban</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">Wood Wood</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</li>
					<li class="grid">
						<a href="#">女生</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>人群</h4>
									<ul>
										<li>
											<a href="/pro/shoes/frontShoes.action">最新款</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">青年</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">孩童</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">中年</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">老人</a>
										</li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>款式</h4>
									<ul>
										<li>
											<a href="/pro/shoes/frontShoes.action">休闲鞋</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">跑步鞋</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">帆布鞋</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">板鞋</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">足球鞋</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">篮球鞋</a>
										</li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>Popular Brands</h4>
									<ul>
										<li>
											<a href="/pro/shoes/frontShoes.action">Levis</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">Persol</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">Nike</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">Edwin</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">New Balance</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">Jack & Jones</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">Paul Smith</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">Ray-Ban</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">Wood Wood</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</li>
					<li class="grid">
						<a href="#">儿童</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>人群</h4>
									<ul>
										<li>
											<a href="/pro/shoes/frontShoes.action">最新款</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">男孩</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">女孩</a>
										</li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>款式</h4>
									<ul>
										<li>
											<a href="/pro/shoes/frontShoes.action">运动</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">休闲</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">跑步</a>
										</li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>品牌</h4>
									<ul>
										<li>
											<a href="/pro/shoes/frontShoes.action">Levis</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">Persol</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">Nike</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">Edwin</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">New Balance</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">Jack & Jones</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">Paul Smith</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">Ray-Ban</a>
										</li>
										<li>
											<a href="/pro/shoes/frontShoes.action">Wood Wood</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--bottom-header-->
	<!--start-breadcrumbs-->
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
							<!-- 展示图片信息 -->
								<li data-thumb="<s:property value='shoes.ShoesUrl'/>">
									<img src="<s:property value='shoes.ShoesUrl'/>" />
								</li>
							
							</ul>
						</div>
<!-- FlexSlider -->
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
								<h4>价格:
									<span class="actual item_price"><s:property value="shoes.shoesPrise"/>￥</span><a href="#"></a>
								</h4>	
							</div>
							<div>
								<h4 class="quick">产地: &nbsp;&nbsp;<span style="color:#FF0000;"><s:property value="shoes.shoesOrign" /></span></h4>
							</div>
					<form action="/pro/shoes/orderDels" method="get">
							<input type="hidden" name="shoes.shoesId" value="<s:property value="shoes.shoesId"/>"/>
							<ul class="product-colors">
								<h4>颜色</h4>
								<!--<li><a class="color1" href="#"><span> </span></a></li>-->
								<li><span class="color1"> </span></a></li>
								<li><a class="color1" href="javascript:void(0)"><span> <input type="radio" name="color" value="a"/> </span></a></li>
								<li><a class="color2" href="javascript:void(0)"><span> <input type="radio" name="color" value="b"/></span></a></li>
								<li><a class="color3" href="javascript:void(0)"><span> <input type="radio" name="color" value="c"/></span></a></li>
								<li><a class="color5" href="javascript:void(0)"><span> <input type="radio" name="color" value="d"/></span></a></li>
								<li><a class="color6" href="javascript:void(0)"><span> <input type="radio" name="color" value="e"/></span></a></li>
								<li><a class="color7" href="javascript:void(0)"><span> <input type="radio" name="color" value="f"/></span></a></li>
								<li><a class="color8" href="javascript:void(0)"><span> <input type="radio" name="color" value="g"/></span></a></li>
								<div class="clear"> </div>
							</ul>
							<ul class="size">
								<h4>尺寸</h4>
								<li><a href="javascript:void(0)"><input type="radio" name="size" value= 37 />37</a></li>
								<li><a href="javascript:void(0)"><input type="radio" name="size" value= 38 />38</a></li>
								<li><a href="javascript:void(0)"><input type="radio" name="size" value= 39 />39</a></li>
								<li><a href="javascript:void(0)"><input type="radio" name="size" value= 40 />40</a></li>
								<li><a href="javascript:void(0)"><input type="radio" name="size" value= 41 />41</a></li>
								<li><a href="javascript:void(0)"><input type="radio" name="size" value= 42 />42</a></li>
								<li><a href="javascript:void(0)"><input type="radio" name="size" value= 43 />43</a></li>
								<li><a href="javascript:void(0)"><input type="radio" name="size" value= 44 />44</a></li>
							</ul>
							<div class="quantity_box">
								<ul class="product-qty">
									<span>数量:</span>
									<select name = "number">
										<option value=1>1</option>
										<option value=2>2</option>
										<option value=3>3</option>
										<option value=4>4</option>
										<option value=5>5</option>
										<option value=6>6</option>
									</select>
								</ul>
							</div>
							<div class="clearfix"> </div>
							<button class="btn btn-info" onclick="addcart();">添加购物车</button>	
							<input type="submit" class="btn btn-primary" value="直接购买"/>
					</form>
				</div>
			
		</div>
		<div class="clearfix"></div>
		<span>KK</span><s:property value="#session.username" />
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
