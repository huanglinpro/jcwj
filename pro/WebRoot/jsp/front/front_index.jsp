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
    
    <title>My JSP 'front_index.jsp' starting page</title>
    
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
	<!--fonts-->
	<!-- <link href='http://fonts.useso.com/css?family=Alegreya+Sans+SC:100,300,400,500,700,800,900,100italic,300italic,400italic,500italic,700italic,800italic,900italic' rel='stylesheet' type='text/css'>
	<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'> -->
	<!--//fonts-->
	<script type="text/javascript" src="js/move-top.js"></script>
	<!-- <script type="text/javascript" src="js/easing.js"></script> -->
	<script type="text/javascript">
						jQuery(document).ready(function($) {
							$(".scroll").click(function(event){		
								event.preventDefault();
								$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
							});
						});
					</script>	
	<!-- start menu 
	<script src="js/simpleCart.min.js"> </script>-->
	<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
	<script type="text/javascript" src="js/memenu.js"></script>
	<script>$(document).ready(function(){$(".memenu").memenu();});</script>
	<script type="text/javascript">
		function searchIn(){
			var info = document.getElementById("searchShoes").value;
			
			location.href = "<s:url namespace="/shoes" action="SecrchShoes.action" />?shoesInfo="+info;
		};
	</script>
	<style>
		#bg{
			float: right;
			height: 15px;
			width: 15px;
			background-color: rgb(255, 255, 255);
			margin-right: 12px;
		}
	</style>
  </head>
  
  <body>
    <!--top-header-->
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
		
		<div id="bg"><a href="jsp/adm_login.jsp" id="bgbtn" class="btn btn-primary btn-xs active" role="button"><span class="glyphicon glyphicon-cog"></span></a>
		<!-- <button class="btn btn-default btn-xs" id="bgbtn" onclick="goToBack();"><span class="glyphicon glyphicon-cog"></span></button></span></div> -->
		</div>
	</div>
	<div class="top-header">
	<div class="container">
		<div class="top-header-main">
			<div class="col-md-4 top-header-left">
				<div class="search-bar">
					<input type="text" id="searchShoes" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '输入要查找商品';}">
					<input type="submit" value="" onclick="searchIn();">
				</div>
			</div>
			<div class="col-md-4 top-header-middle">
				<a href="/jsp/front/cart.jsp"><img src="images/logo-4.png" alt="nopng" /></a>
			</div>
			<div class="col-md-4 top-header-right">
				<div class="cart box_1">
						<a href="#">
						<h3> <div class="total">
							<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</div>
							<img src="images/cart-1.png" alt="" />
						</a>
						<p><a href="javascript:;" class="simpleCart_empty">清空购物车</a></p>
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
				<ul class="memenu skyblue"><li class="active"><a href="/pro/shoes/frontShoes.action">首页</a></li>
					<li class="grid"><a href="#">男生</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>人群</h4>
									<ul>
										<li><a href="/pro/shoes/frontShoes.action">最新款</a></li>
										<li><a href="/pro/shoes/frontShoes.action">青年</a></li>
										<li><a href="/pro/shoes/frontShoes.action">孩童</a></li>
										<li><a href="/pro/shoes/frontShoes.action">中年</a></li>
										<li><a href="/pro/shoes/frontShoes.action">老人</a></li>

									</ul>
								</div>
								<div class="col1 me-one">
									<h4>风格</h4>
									<ul>
										<li><a href="/pro/shoes/frontShoes.action">休闲鞋</a></li>
										<li><a href="/pro/shoes/frontShoes.action">跑步鞋</a></li>
										<li><a href="/pro/shoes/frontShoes.action">帆布鞋</a></li>
										<li><a href="/pro/shoes/frontShoes.action">板鞋</a></li>
										<li><a href="/pro/shoes/frontShoes.action">足球鞋</a></li>
										<li><a href="/pro/shoes/frontShoes.action">篮球鞋</a></li>
									</ul>	
								</div>
								<div class="col1 me-one">
									<h4>品牌</h4>
									<ul>
								
									</ul>	
								</div>
							</div>
						</div>
					</li>
					<li class="grid"><a href="#">女生</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>人群</h4>
									<ul>
										<li><a href="/pro/shoes/frontShoes.action">最新款</a></li>
										<li><a href="/pro/shoes/frontShoes.action">青年</a></li>
										<li><a href="/pro/shoes/frontShoes.action">孩童</a></li>
										<li><a href="/pro/shoes/frontShoes.action">中年</a></li>
										<li><a href="/pro/shoes/frontShoes.action">老人</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>款式</h4>
									<ul>
									<li><a href="products.html">休闲鞋</a></li>
										<li><a href="/pro/shoes/frontShoes.action">跑步鞋</a></li>
										<li><a href="/pro/shoes/frontShoes.action">帆布鞋</a></li>
										<li><a href="/pro/shoes/frontShoes.action">板鞋</a></li>
										<li><a href="/pro/shoes/frontShoes.action">足球鞋</a></li>
										<li><a href="/pro/shoes/frontShoes.action">篮球鞋</a></li>
									</ul>	
								</div>
								<div class="col1 me-one">
									<h4>品牌</h4>
									<ul>
										<li><a href="/pro/shoes/frontShoes.action">Levis</a></li>
										<li><a href="/pro/shoes/frontShoes.action">Persol</a></li>
										<li><a href="/pro/shoes/frontShoes.action">Nike</a></li>
										<li><a href="/pro/shoes/frontShoes.action">Edwin</a></li>
										<li><a href="/pro/shoes/frontShoes.action">New Balance</a></li>
										<li><a href="/pro/shoes/frontShoes.action">Jack & Jones</a></li>
										<li><a href="/pro/shoes/frontShoes.action">Paul Smith</a></li>
										<li><a href="/pro/shoes/frontShoes.action">Ray-Ban</a></li>
										<li><a href="/pro/shoes/frontShoes.action">Wood Wood</a></li>
									</ul>	
								</div>
							</div>
						</div>
					</li>
					<li class="grid"><a href="#">儿童</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>人群</h4>
									<ul>
										<li><a href="/pro/shoes/frontShoes.action">最新款</a></li>
										<li><a href="/pro/shoes/frontShoes.action">男孩</a></li>
										<li><a href="/pro/shoes/frontShoes.action">女孩</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>款式</h4>
									<ul>
										<li><a href="/pro/shoes/frontShoes.action">运动</a></li>
										<li><a href="/pro/shoes/frontShoes.action">休闲</a></li>
										<li><a href="/pro/shoes/frontShoes.action">跑步</a></li>
									</ul>	
								</div>
								<div class="col1 me-one">
									<h4>品牌</h4>
									<ul>
										<li><a href="/pro/shoes/frontShoes.action">Levis</a></li>
										<li><a href="/pro/shoes/frontShoes.action">Persol</a></li>
										<li><a href="/pro/shoes/frontShoes.action">Nike</a></li>
										<li><a href="/pro/shoes/frontShoes.action">Edwin</a></li>
										<li><a href="/pro/shoes/frontShoes.action">New Balance</a></li>
										<li><a href="/pro/shoes/frontShoes.action">Jack & Jones</a></li>
										<li><a href="/pro/shoes/frontShoes.action">Paul Smith</a></li>
										<li><a href="/pro/shoes/frontShoes.action">Ray-Ban</a></li>
										<li><a href="/pro/shoes/frontShoes.action">Wood Wood</a></li>
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
	<!--banner-starts-->
	 
	<div class="bnr" id="home">
		<div  id="top" class="callbacks_container">
			<ul class="rslides" id="slider4">
				<s:iterator value="lispic">
					<li>
						<img class="banner" src="<s:property value='pUrl'/>" alt="png"></img>
					</li>
				</s:iterator>
			
			</ul>
		</div>
	
		<div class="clearfix"> </div>
	</div>
	<!--banner-ends--> 
	<!--Slider-Starts-Here-->
		<script src="js/responsiveslides.min.js"></script>
			 <script>
			    // You can also use "$(window).load(function() {"
			    $(function () {
			      // Slideshow 4
			      $("#slider4").responsiveSlides({
			        auto: true,
			        pager: true,
			        nav: false,
			        speed: 1000,
			        namespace: "callbacks",
			        before: function () {
			          $('.events').append("<li>before event fired.</li>");
			        },
			        after: function () {
			          $('.events').append("<li>after event fired.</li>");
			        }
			      });
			
			    });
			  </script>
			<!--End-slider-script-->
	<!--start-banner-bottom--> 
	<div class="banner-bottom">
		<div class="container">
			<div class="banner-bottom-top">
				<div class="col-md-6 banner-bottom-left">
					<div class="bnr-one">
						<div class="bnr-left">
							<h1><a href="javascript:void(0)">Duis dictum volutpat</a></h1>
							<p></p>
							<div class="b-btn"> 
								<a href="javascript:void(0)">SHOP</a>
							</div>
						</div>
						<div class="bnr-right"> 
							<a href="javascript:void(0)"><img style="high:200px;width:130px;" src="img/b13.jpg" alt="" /></a>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-6 banner-bottom-right">
					<div class="bnr-two">
						<div class="bnr-left">
							<h2><a href="javascript:void(0)">Phasellus quis nunc</a></h2>
							<p></p>
							<div class="b-btn"> 
								<a href="javascript:void(0)">NOW</a>
							</div>
						</div>
						<div class="bnr-right"> 
							<a href="javascript:void(0)"><img style="high:200px;width:130px;" src="img/b17.jpg" alt="" /></a>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--end-banner-bottom--> 
	<!--start-shoes--> 
	<div class="shoes"> 
		<div class="container"> 
			<div class="product-one">
			<s:iterator value="slist" >
				<div class="col-md-3 product-left"> 
					<div class="p-one simpleCart_shelfItem">					
						 <a href="/pro/shoes/shoesDetial.action?shoes.shoesId=<s:property value='shoesId'/>">
								<img src="<s:property value='ShoesUrl'/>" alt="" />
								<div class="mask">
									<span class="glyphicon glyphicon-jpy">直接购买</span>
								</div>
						 </a> 	
						<h4><s:property value="shoesName"/></h4>
						<p><a class="item_add" href="#"><i></i><span class=" item_price"><s:property value="shoesPrise"/>￥</span></a></p>
					
					</div>
				</div>
				</s:iterator>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--end-shoes-->
	<!--start-abt-shoe-->
	<div class="abt-shoe">
		<div class="container"> 
		<s:iterator value="fList">
			<div class="abt-shoe-main">
				<div class="col-md-4 abt-shoe-left">	
					<div class="abt-one">
						<a href="javascript:void(0)"><img src="images/abt-1.jpg" alt="" /></a>
						<h3>公告栏</h3>
						<h4  style="color:red"><s:property value="title"/> </h4>
						<p style="color:"><s:property value="info"/></p>
					</div>
				
				</div>
			</div>
			</s:iterator>
			<div class="clearfix"> </div>
		</div>
		</div>
		
	</div>
	<!--end-abt-shoe-->
	<!--start-footer-->
	
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
