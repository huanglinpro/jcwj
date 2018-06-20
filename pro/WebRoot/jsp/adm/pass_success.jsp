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
    
    <title>My JSP 'pass_success.jsp' starting page</title>
    
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
      .infos{
        height: 250;
        width: 300;
        margin: 0 auto;
      }
      .infos>h3{
        text-align: center;
        color: red;
        font-family: 宋体;
      }
      .butts{
        text-align:center;
      }
    </style>
  </head>
  
  <body>
    <div class="infos">
      <h3>您的密码修改成功</h3>
      <div class="butts">
     	用户： <s:property value="admName"/>
        <form class="" action="/pro/adm/backHome.action" method="get">
          <input type="hidden" name="admName" value="<s:property value="admName"/>">
          <button type="submit" name="button" class="btn btn-info">返回主页</button>
        </form>
      </div>
    </div>
  </body>
</html>
