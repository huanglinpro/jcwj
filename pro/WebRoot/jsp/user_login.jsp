<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user_login.jsp' starting page</title>
    
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
		#headlogo{
	height: 150px;
	width: 100%;
	/*border: 1px solid blue;*/
	background-color: #F5F5F5;
	
}

#forminput{
	height: 350px;
	width: 400px;
	/*border: 1px solid red;*/
	background: #FAFAFA;
	margin:0 auto;
}
#sub{
	height: 35px;
	width: 330px;
	background: red;
	border:none;
	color: white;
	/*border-radius: 5px	*/
}

.loginpng{
	margin: 5px;
}

.sinput{
	height: 45px;
	width: 350px;
	/*margin: 10px;*/
	text-align: left;
	margin:  auto 0;
	margin-left: 20px;
	margin-top: 10px;
	margin-bottom:10px;

}
	</style>

  </head>
  
  <body>
    <div id="headlogo">
		<div id="logoimg">
			<a href="#">
				<img src="/images/logo-4.png"  alt="tu">
			</a>
		</div>
		<div>
			<img src="images/fg_3.png" alt="line">
		</div>
	</div>
	<div id="bigpng">
		<div id="forminput">
			<form action="/pro/login/userLogin.action" method="post">
			<input type="hidden" name="userstate" value="n"> 
				<div style="text-align: center; color: red">
					<h3>账号登录</h3>
				</div>
				<div >
				    <input type="text" id="usename" name="userLogName" class="sinput" placeholder="请输入用户名\手机号\邮箱">
				</div>
				<div>
					<input type="password" id="passworld" name="userLogPress" class="sinput" placeholder="请输入6-8密码">
				</div>
				<div style="text-align: center;">
					<input type="submit" id="sub" value="登录">&nbsp;&nbsp;
				</div>
				<div style="text-align: right; margin: 8px;">
					<a href="#" style="color: red">忘记密码？</a>
				</div>

			</form>
				<div style="text-align: center;margin-top: 10px">
					<span>还没有会员？</span>&nbsp;
					<a href="/pro/jsp/user/input_user.jsp" style="color:#2237BF">注册会员</a>
				</div>
				<div style="text-align: center;margin-top: 10px" >
					<a href="#" class="loginpng"><img src="images/qq_login_btn.png" border="0" alt="qq登录"></a>
					<a href="#" class="loginpng"><img src="images/rr_login.png" border="0" alt="登录"></a>
					<a href="#" class="loginpng"><img src="images/taobao_login_btn.png" border="0" alt="登录"></a>
				</div>
		</div>
	</div>
  </body>
</html>
