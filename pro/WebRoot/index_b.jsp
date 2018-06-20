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
    
    <title>My JSP 'bg_index2.jsp' starting page</title>
    
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	  <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap.min.css">
    
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
    
    <!-- Animate CSS -->
    <link rel="stylesheet" type="text/css" href="assets/css/animate.css">
    
    <!-- Owl-Carousel -->
    <link rel="stylesheet" type="text/css" href="assets/css/owl.carousel.css" >
    <link rel="stylesheet" type="text/css" href="assets/css/owl.theme.css" >
    <link rel="stylesheet" type="text/css" href="assets/css/owl.transitions.css" >

    <!-- Materialize CSS -->
    <link rel="stylesheet" type="text/css" href="assets/css/material.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="assets/css/responsive.css">
    
    <!-- Colors CSS -->
    <link rel="stylesheet" type="text/css" href="assets/css/color/blue.css" title="blue">
   
    <!-- Custom Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    
    <!-- Modernizer js
    <script src="assets/js/modernizr.custom.js"></script> -->
  </head>
  
  <body class="index">
    
    <div class="menu-wrap">
        <nav class="menu">
            <div class="icon-list">
                <a href="<s:url namespace="/adm" action="findByname"/>?admName=${admName}"  class="logo page-scroll waves-effect">${admName}</a>
                <a href="#about-us" class="page-scroll waves-effect">
                    <i class="fa fa-fw fa-user"></i>
                    <span>用户管理</span>
                </a>
                <a href="#portfolio" class="page-scroll waves-effect">
                    <i class="fa fa-fw fa-envelope-o"></i>
                    <span>商品管理</span>
                </a>
                <a href="#service" class="page-scroll waves-effect">
                    <i class="fa fa-fw fa-bar-chart-o"></i>
                    <span>订单管理</span>
                </a>
                <a href="#team" class="page-scroll waves-effect">
                    <i class="fa fa-fw fa-users"></i>
                    <span>管理人员</span>
                </a>
                <a href="#latest-news" class="page-scroll waves-effect">
                    <i class="fa fa-fw fa-bell-o"></i>
                    <span>消息管理</span>
                </a>
                <a href="#contact" class="page-scroll waves-effect">
                    <i class="fa fa-fw fa-comment-o"></i>
                    <span>公告信息</span>
                </a>
            </div>
        </nav>
        <button class="close-button" id="close-button">Close Menu</button>
    </div>
    <button class="menu-button waves-effect" id="open-button">Open Menu</button>
    <section class="header" id="home">
        <div class="container">
            <div class="intro-text">
                <h1>欢迎您登录后台管理系统
                    <span>${admName}</span>
                </h1>
                <a href="/jsp/index.jsp" class="page-scroll waves-effect btn btn-primary">退出登录</a>
            </div>
        </div>
    </section>
	
	  <section id="client" class="client-section">
        <div class="container">
        </div>
	  </section>
	
    <section id="about-us" class="about-us-section-1">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="section-title text-center">
                        <h2 class="hd">用户列表</h2>
                      
                    </div>
                </div>
            </div>
            <div class="row">

                <div class="col-md-4 col-sm-4">
                    <div class="welcome-section text-center waves-effect">
                        <img src="assets/images/photo-2.jpg" class="img-responsive" alt="..">
                       <a href="<s:url namespace='/user' action='listBack' />" ><h4>列出用户</h4> </a> 
                        <div class="border"></div>      
                    </div>
                </div>

                <div class="col-md-4 col-sm-4">
                    <div class="welcome-section text-center waves-effect">
                        <img src="assets/images/photo-1.jpg" class="img-responsive" alt="..">
                        <a href="/pro/jsp/user/findUser.jsp"><h4>查询用户信息</h4></a>
                        <div class="border"></div>
                    </div>
                </div>
				
                <div class="col-md-4 col-sm-4">
                    <div class="welcome-section text-center waves-effect">
                        <img src="assets/images/photo-3.jpg" class="img-responsive" alt="..">
                        <a href="<s:url namespace='/user' action='listUnBack' />"> <h4>激活用户</h4></a>
                        <div class="border"></div>
                    </div>
                </div>
            </div>
        
        </div>
        
	</section>
   
	   <section id="client" class="client-section">
			<div class="container">
			</div>
	   </section>
	 
    <section id="portfolio" class="portfolio-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-title text-center">
                        <h2 class="hd">商品管理</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">

                    <!-- Start Portfolio items -->
                    <ul id="portfolio-list">
                        <li>
                            <div class="portfolio-item">
							<h4 style="color:red">添加商品</h4>
                                <img src="assets/images/portfolio/port-4.jpg" class="img-responsive" alt="" />
                                <div class="portfolio-caption">
                                    <h4>添加商品</h4>
                                    <a href="/pro/jsp/shoes/input_shoes.jsp" class="link-2">
                                        <i class="fa fa-link"></i>
                                    </a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="portfolio-item">
							<h4 style="color:red">列出商品</h4>
                                <img src="assets/images/portfolio/port-6.jpg" class="img-responsive" alt="" />
                                <div class="portfolio-caption">
                                    <h4>列出商品</h4>
                                  	
                                    <a href="<s:url namespace='/shoes' action='listShoes'/>" class="link-2">
                                        <i class="fa fa-link"></i>
                                    </a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="portfolio-item">
							<h4 style="color:red">查询商品</h4>
                                <img src="assets/images/portfolio/port-1.jpg" class="img-responsive" alt="" />
                                <div class="portfolio-caption">
                                    <h4>查询商品</h4>
                                    <a href="/pro/jsp/shoes/findShoes.jsp" class="link-2">
                                        <i class="fa fa-link"></i>
                                    </a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
	
	    <section id="client" class="client-section">
			<div class="container">
			</div>
		</section>
		
    <section id="service" class="services-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-title text-center">
                        <h2 class="hd">订单管理</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service waves-effect">
                        <i class="fa fa-magic"></i>
                        <div class="border"></div>
                        <div class="service-content">
                           <h4><a href="#" />查询订单</a></h4>
						   <p>输入订单号，你可以快速的找到你所需要的订单详情。</p>
                        </div>
                    </div>
                </div>
                <!-- /.col-md-3 -->
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service waves-effect">
                        <i class="fa fa-gift"></i>
                        <div class="border"></div>
                        <div class="service-content">
                           <h4><a href="#" />订单展示</a></h4>
                            <p>这里将为你列出所有已经生成的定单信息。</p>
                        </div>
                    </div>
                </div>
                <!-- /.col-md-3 -->
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service waves-effect">
                        <i class="fa fa-wordpress"></i>
                        <div class="border"></div>
                        <div class="service-content">
                            <h4><a href="#"> 确认订单 </a></h4>
                            <p>这里列出所有没有发货的订单，你可以这里确认发货。</p>
                        </div>
                    </div>
                </div>
                <!-- /.col-md-3 -->
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service waves-effect">
                        <i class="fa fa-plug"></i>
                        <div class="border"></div>
                        <div class="service-content">
                            <h4><a>撤销订单</a></h4>
                            <p>管理员有权利撤销存有质疑的订单，或根据用户请求撤销订单。</p>
                        </div>
                    </div>
                </div>

            </div>
    </section>
	
	 <section id="client" class="client-section">
			<div class="container">
			</div>
		</section>
	 
    <section id="team" class="team-member-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="section-title text-center">
                        <h2 class="hd">管理人员</h2>
                    </div>
                </div>
            </div>

            <div class="row">
             <!--   <div class="col-md-3 col-sm-6">
                    <div class="team-member">
                        <img src="assets/images/team/face_0.png" class="img-responsive" alt="">
                       
                    </div>
                </div>
-->	
			
                <div class="col-md-3 col-sm-6 guanli ">
                    <div class="team-member ">
                        <img src="assets/images/team/face_2.png" class="img-responsive" alt="">
                        <div class="team-details">
                            <h4 ></h4>
                            <div class="designation"></div>
                            <ul>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-linkedin"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="team-member ">
                        <img src="assets/images/team/face_3.png" class="img-responsive" alt="NO PICTURE">
                        <div class="team-details">
                            <h4>John Doe</h4>
                            <div class="designation">Founder & Director</div>
                            <p class="description">Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit.
                                Cras ultricies ligula sed magna dictum porta.</p>
                            <ul>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-linkedin"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
				
                    </div>
                </div>
            </div>

        </div>
    </section>
	
	 <section id="client" class="client-section">
			<div class="container">
			</div>
		</section>
	
    <section id="latest-news" class="latest-news-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-title text-center">
                        <h2 class="hd">消息管理</h2>
                      
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="latest-news">
                    <div class="col-md-4 col-sm-4">
                        <div class="latest-post waves-effect">
                            <img src="assets/images/post-1.jpg" class="img-responsive" alt="">
                            <h4>
                                <a href="<s:url namespace='/mes' action='listMessage'/>">查看消息</a>
                            </h4>
     
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="latest-post waves-effect">
                            <img src="assets/images/post-2.jpg" class="img-responsive" alt="">
                            <h4>
                                
                            </h4>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="latest-post waves-effect">
                            <img src="assets/images/post-3.jpg" class="img-responsive" alt="">
                            <h4>
                                <a href="<s:url namespace='/mes' action='listUnMes'/>">回复消息</a>
                            </h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="client" class="client-section">
        <div class="container">

        </div>
    </section>
	
    <section id="contact" class="contact contact-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title text-center wow fadeInDown" data-wow-duration="2s" data-wow-delay="50ms">
                        <h2 class="hd">公告</h2>
                    
                    </div>
                </div>
            </div>
            <div class="row">
	             <div class="col-lg-12">      
		             <div class="row">
			             <div class="col-lg-12">
			         		<form class="form-horizontal" action="/pro/notice/addNotice.action" method="post">
			  					<div class="form-group">
			    					<label for="title" class="col-sm-2 control-label">公告标题</label>
			    					<div class="col-sm-10">
			      						<input type="text" class="form-control" id="title" placeholder="Email" name="notice.title"/>
			    		    		</div>
			  					</div>
			  		 			<div class="form-group">
			    					<label for="info" class="col-sm-2 control-label">输入公告信息</label>
			    					<div class="col-sm-10">
			      						<input type="text" class="form-control" id="info" placeholder="输入公告信息" name="notice.info"/>
			    					</div>
			  					</div>
			          			<div class="form-group">
			               			<div class="col-sm-offset-2 col-sm-10">
			               				<input type="submit" class="btn btn-info" value="发布公告"/>
			         	   			</div>
			          			</div>
							</form>
			            </div>
		            </div>
	            </div>
            </div>
        </div>

    </section>
    <script src="assets/js/jquery-2.1.3.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
   <!--  <script src="assets/js/jquery.easing.1.3.js"></script> -->
    <script src="assets/js/classie.js"></script>
    <script src="assets/js/jquery.appear.js"></script>

    <script src="assets/js/jquery.fitvids.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="assets/js/jqBootstrapValidation.js"></script>


    <!-- Materialize js -->
    <script src="assets/js/material.js"></script>
    <script src="assets/js/waypoints.min.js"></script>

    <script src="assets/js/script.js"></script>


  </body>
</html>
