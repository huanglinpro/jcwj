<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'shoes_list.jsp' starting page</title>
    
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
								$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
							});
						});
					</script>	
	<!-- start menu -->
	<script src="js/simpleCart.min.js"> </script>
	<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
	<script type="text/javascript" src="js/memenu.js"></script>
	<script>$(document).ready(function(){$(".memenu").memenu();});</script>	
	
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
							<img src="images/cart-1.png" alt="" />
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
			<div class="top-nav">
				<ul class="memenu skyblue">
					<li class="active">
						<a href="index.html">首页</a>
					</li>
					<li class="grid">
						<a href="#">男生</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>人群</h4>
									<ul>
										<li>
											<a href="products.html">最新款</a>
										</li>
										<li>
											<a href="products.html">青年</a>
										</li>
										<li>
											<a href="products.html">孩童</a>
										</li>
										<li>
											<a href="products.html">中年</a>
										</li>
										<li>
											<a href="products.html">老人</a>
										</li>
				
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>风格</h4>
									<ul>
										<li>
											<a href="products.html">休闲鞋</a>
										</li>
										<li>
											<a href="products.html">跑步鞋</a>
										</li>
										<li>
											<a href="products.html">帆布鞋</a>
										</li>
										<li>
											<a href="products.html">板鞋</a>
										</li>
										<li>
											<a href="products.html">足球鞋</a>
										</li>
										<li>
											<a href="products.html">篮球鞋</a>
										</li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>品牌</h4>
									<ul>
										<li>
											<a href="products.html">Levis</a>
										</li>
										<li>
											<a href="products.html">Persol</a>
										</li>
										<li>
											<a href="products.html">Nike</a>
										</li>
										<li>
											<a href="products.html">Edwin</a>
										</li>
										<li>
											<a href="products.html">New Balance</a>
										</li>
										<li>
											<a href="products.html">Jack & Jones</a>
										</li>
										<li>
											<a href="products.html">Paul Smith</a>
										</li>
										<li>
											<a href="products.html">Ray-Ban</a>
										</li>
										<li>
											<a href="products.html">Wood Wood</a>
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
											<a href="products.html">最新款</a>
										</li>
										<li>
											<a href="products.html">青年</a>
										</li>
										<li>
											<a href="products.html">孩童</a>
										</li>
										<li>
											<a href="products.html">中年</a>
										</li>
										<li>
											<a href="products.html">老人</a>
										</li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>款式</h4>
									<ul>
										<li>
											<a href="#">休闲鞋</a>
										</li>
										<li>
											<a href="#">跑步鞋</a>
										</li>
										<li>
											<a href="#">帆布鞋</a>
										</li>
										<li>
											<a href="#">板鞋</a>
										</li>
											<li>
												<a href="#">皮鞋鞋</a>
											</li>
										<li>
											<a href="#">高跟鞋</a>										
										</li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>Popular Brands</h4>
									<ul>
										<li>
											<a href="products.html">Levis</a>
										</li>
										<li>
											<a href="products.html">Persol</a>
										</li>
										<li>
											<a href="products.html">Nike</a>
										</li>
										<li>
											<a href="products.html">Edwin</a>
										</li>
										<li>
											<a href="products.html">New Balance</a>
										</li>
										<li>
											<a href="products.html">Jack & Jones</a>
										</li>
										<li>
											<a href="products.html">Paul Smith</a>
										</li>
										<li>
											<a href="products.html">Ray-Ban</a>
										</li>
										<li>
											<a href="products.html">Wood Wood</a>
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
											<a href="products.html">最新款</a>
										</li>
										<li>
											<a href="products.html">男孩</a>
										</li>
										<li>
											<a href="products.html">女孩</a>
										</li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>款式</h4>
									<ul>
										<li>
											<a href="products.html">运动</a>
										</li>
										<li>
											<a href="products.html">休闲</a>
										</li>
										<li>
											<a href="products.html">跑步</a>
										</li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>品牌</h4>
									<ul>
										<li>
											<a href="products.html">Levis</a>
										</li>
										<li>
											<a href="products.html">Persol</a>
										</li>
										<li>
											<a href="products.html">Nike</a>
										</li>
										<li>
											<a href="products.html">Edwin</a>
										</li>
										<li>
											<a href="products.html">New Balance</a>
										</li>
										<li>
											<a href="products.html">Jack & Jones</a>
										</li>
										<li>
											<a href="products.html">Paul Smith</a>
										</li>
										<li>
											<a href="products.html">Ray-Ban</a>
										</li>
										<li>
											<a href="products.html">Wood Wood</a>
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
					<li><a href="index.html">Home Page</a></li>
					<li class="active">产品列表</li>
				</ol>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->
	<!--start-product--> 
	<div class="product">
		<div class="container">
			<div class="product-main">
				<div class="col-md-9 p-left">
				<div class="product-one">
				<div class="col-md-4 product-left single-left"> 
					<div class="p-one simpleCart_shelfItem">
						<a href="single.html">
								<img src="images/shoes-1.png" alt="" />
								<div class="mask mask1">
									<span>Quick View</span>
								</div>
							</a>
						<h4>Aenean placerat</h4>
						<p><a class="item_add" href="#"><i></i> <span class=" item_price">$329</span></a></p>
					</div>
				</div>
				<div class="col-md-4 product-left single-left"> 
					<div class="p-one simpleCart_shelfItem">
						<a href="single.html">
								<img src="images/shoes-2.png" alt="" />
								<div class="mask mask1">
									<span>Quick View</span>
								</div>
							</a>
						<h4>Aenean placerat</h4>
						<p><a class="item_add" href="#"><i></i> <span class=" item_price">$329</span></a></p>
					</div>
				</div>
				<div class="col-md-4 product-left single-left"> 
					<div class="p-one simpleCart_shelfItem">
						<a href="single.html">
								<img src="images/shoes-3.png" alt="" />
								<div class="mask mask1">
									<span>Quick View</span>
								</div>
							</a>
						<h4>Aenean placerat</h4>
						<p><a class="item_add" href="#"><i></i> <span class=" item_price">$329</span></a></p>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="product-one">
				<div class="col-md-4 product-left single-left"> 
					<div class="p-one simpleCart_shelfItem">
						<a href="single.html">
								<img src="images/shoes-5.png" alt="" />
								<div class="mask mask1">
									<span>Quick View</span>
								</div>
							</a>
						<h4>Aenean placerat</h4>
						<p><a class="item_add" href="#"><i></i> <span class=" item_price">$329</span></a></p>
					</div>
				</div>
				<div class="col-md-4 product-left single-left"> 
					<div class="p-one simpleCart_shelfItem">
						<a href="single.html">
								<img src="images/shoes-6.png" alt="" />
								<div class="mask mask1">
									<span>Quick View</span>
								</div>
							</a>
						<h4>Aenean placerat</h4>
						<p><a class="item_add" href="#"><i></i> <span class=" item_price">$329</span></a></p>
					</div>
				</div>
				<div class="col-md-4 product-left single-left"> 
					<div class="p-one simpleCart_shelfItem">
						<a href="single.html">
								<img src="images/shoes-7.png" alt="" />
								<div class="mask mask1">
									<span>Quick View</span>
								</div>
							</a>
						<h4>Aenean placerat</h4>
						<p><a class="item_add" href="#"><i></i> <span class=" item_price">$329</span></a></p>
					</div>
				</div>
			<div class="clearfix"> </div>
			</div>
			<div class="product-one">
				<div class="col-md-4 product-left single-left"> 
					<div class="p-one simpleCart_shelfItem">
						<a href="single.html">
								<img src="images/shoes-15.png" alt="" />
								<div class="mask mask1">
									<span>Quick View</span>
								</div>
							</a>
						<h4>Aenean placerat</h4>
						<p><a class="item_add" href="#"><i></i> <span class=" item_price">$329</span></a></p>
						
					</div>
				</div>
				<div class="col-md-4 product-left single-left"> 
					<div class="p-one simpleCart_shelfItem">
						<a href="single.html">
								<img src="images/shoes-10.png" alt="" />
								<div class="mask mask1">
									<span>Quick View</span>
								</div>
							</a>
						<h4>Aenean placerat</h4>
						<p><a class="item_add" href="#"><i></i> <span class=" item_price">$329</span></a></p>
						
					</div>
				</div>
				<div class="col-md-4 product-left single-left"> 
					<div class="p-one simpleCart_shelfItem">
						<a href="single.html">
								<img src="images/shoes-11.png" alt="" />
								<div class="mask mask1">
									<span>Quick View</span>
								</div>
							</a>
						<h4>Aenean placerat</h4>
						<p><a class="item_add" href="#"><i></i> <span class=" item_price">$329</span></a></p>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			</div>
			<div class="col-md-3 p-right single-right">
				<h3>类别</h3>
					<ul class="product-categories">
						<li><a href="#">休闲</a> <span class="count">14/双</span></li>
						<li><a href="#">跑步</a> <span class="count">2/双</span></li>
						<li><a href="#">帆布鞋</a> <span class="count">2/双</span></li>
						<li><a href="#">板鞋</a> <span class="count">31/双</span></li>
						<li><a href="#">足球鞋</a> <span class="count">3/双</span></li>
						<li><a href="#">篮球鞋</a> <span class="count">3/双</span></li>
						<li>
							<a href="#">皮鞋鞋</a>
							<span class="count">3/双</span>
						</li>
						<li>
							<a href="#">高跟鞋</a>
							<span class="count">3/双</span>
						</li>
					</ul>
					<h3>颜色</h3>
					<ul class="product-categories">
						<li><a href="#">黄色</a> <span class="count">4/双</span></li>
						<li><a href="#">灰色</a> <span class="count">2/双</span></li>
						<li><a href="#">红色</a> <span class="count">22/双</span></li>
						<li><a href="#">灰色</a> <span class="count">8/双</span></li>
						<li><a href="#">黑色</a> <span class="count">0/双</span></li>
						<li><a href="#">紫色</a> <span class="count">2/双</span></li>
						<li>
							<a href="#">蓝色</a>
							<span class="count">2/双</span>
						</li>
					</ul>
					<h3>尺寸大小</h3>
					<ul class="product-categories">
						<li><a href="#">37</a> <span class="count">4/双</span></li>
						<li><a href="#">38</a> <span class="count">2/双</span></li>
						<li><a href="#">39</a> <span class="count">2/双</span></li>
						<li><a href="#">40</a> <span class="count">8/双</span></li>
						<li><a href="#">41</a> <span class="count">51/双</span></li>
						<li>
							<a href="#">42</a>
							<span class="count">61/双</span>
						</li>
						<li>
							<a href="#">43</a>
							<span class="count">13/双</span>
						</li>
						<li>
							<a href="#">44</a>
							<span class="count">18/双</span>
						</li>

					</ul>
					<h3>价格区间</h3>
					<ul class="product-categories p1">
						<li><a href="#">50￥-100(含)￥</a> <span class="count">2/双</span></li>
						<li><a href="#">101￥-150(含)￥</a> <span class="count">2/双</span></li>
						<li><a href="#">151￥-200(含)￥</a> <span class="count">8/双</span></li>
						<li><a href="#">201￥-250(含)￥</a> <span class="count">41/双</span></li>
						<li>
							<a href="#">251￥-300(含)￥</a>
							<span class="count">34/双</span>
						</li>
						<li>
							<a href="#">301￥-350(含)/双￥</a>
							<span class="count">61/双</span>
						</li>
						<li>
							<a href="#">351￥-以上</a>
							<span class="count">31/双</span>
						</li>
					</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	</div>
	<!--end-product-->
	<!--start-footer-->
	<div class="footer">
		<div class="container">
		</div>
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
	<!--end-footer-text-->	
  </body>
</html>
