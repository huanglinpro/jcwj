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
    
    <title>My JSP 'updat_mees.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="bootstrap\css\bootstrap.min.css">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<style>
#header{
      text-align: center;
  }

#info{
      color: #28AAE4;
      font-family: 宋体;
  }
  .contex{
      width: 1000px;
      margin: 0 auto;
  }
  </style>
	

  </head>
  
  <body>
    
      <button type="button" class="btn btn-default" aria-label="Left Align" onclick="goback();">
    <span class="glyphicon glyphicon-home" aria-hidden="true"></span>
  </button>
 <div id="header">
     <h1 id= "info">回复消息</h1>
 </div>
 <div id="contex">
   <form class="form-horizontal" action="<s:url namespace='/mes' action='updateMes.action'/>" method="get">
   <input type="hidden" name="msg.mId" value="<s:property value='msg.mId'/>">
   
   <div class="form-group">
     <label for="rname" class="col-sm-2 control-label">反馈人:</label>
     <div class="col-sm-10">
      <!--  <input type="email" class="form-control" id="inputEmail3" placeholder="Email"> -->
       <s:textfield class="form-control" disabled="true" id= "rname" type="text" name="msg.mWName"></s:textfield>
     </div>
   </div>
   <div class="form-group">
     <label for="finfo" class="col-sm-2 control-label">反馈消息：</label>
     <div class="col-sm-10">
       <!-- <input type="password" class="form-control" id="inputPassword3" placeholder="Password"> -->
       <s:textfield class="form-control" disabled="true" id= "finfo" type="text" name="msg.mWInfo"></s:textfield>
     </div>
   </div>
    <div class="form-group">
     <label for="finfo" class="col-sm-2 control-label">反馈日期：</label>
     <div class="col-sm-10">
       <!-- <input type="password" class="form-control" id="inputPassword3" placeholder="Password"> -->
       <s:textfield class="form-control" disabled="true" id= "finfo" type="text" name="msg.mWDate"></s:textfield>
     </div>
   </div>
      <div class="form-group">
     <label for="finfo" class="col-sm-2 control-label">回复人:</label>
     <div class="col-sm-10">
       <!-- <input type="password" class="form-control" id="inputPassword3" placeholder="Password"> -->
       <s:textfield class="form-control" id= "finfo" type="text" name="msg.mRName"></s:textfield>
     </div>
   </div>
      <div class="form-group">
     <label for="finfo" class="col-sm-2 control-label">回复消息:</label>
     <div class="col-sm-10">
       <!-- <input type="password" class="form-control" id="inputPassword3" placeholder="Password"> -->
       <s:textfield class="form-control" id= "finfo" type="text" name="msg.mRInfo"></s:textfield>
     </div>
   </div>
   <div class="form-group">
     <div class="col-sm-offset-2 col-sm-10">
       <div class="checkbox">
         <label>
           <input type="radio" name="msg.mState" value="y" checked="checked"> 已回复
         </label>
       </div>
     </div>
   </div>
   <div class="form-group">
     <div class="col-sm-offset-2 col-sm-10">
       <button type="submit" class="btn btn-default">确认回复</button>
     </div>
   </div>
 </form>
 </div>
    
  </body>
</html>
