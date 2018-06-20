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
    
    <title>My JSP 'adm_press.jsp' starting page</title>
    
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="bootstrap\css\bootstrap.min.css">


	
	<style>
    #header{
          text-align: center;
      }

    #info{
          color: #28AAE4;
          font-family: 宋体;
      }
      .contex{
          height: 500px;
          width: 600px;
          margin: 0 auto;
      }
      .butts{
        text-align: center;
      }

    </style>
		
		<script type="text/javascript">
    var flag = true;
    function confin(){
      var pasone = document.getElementById("updatepass").value;
      var pastwo = document.getElementById("repasss").value;

      if(pasone === pastwo){
        flag = true;
      }
      else{
        flag =false;
      }
      console.log(pasone);
    };
     function goback(){
           if(flag)
               return true;
           else
           return false;
       };
      
    </script>
		
		
  </head>
  
  <body>
	    <button type="button" class="btn btn-default" aria-label="Left Align" onclick="goback();">
      <span class="glyphicon glyphicon-home" aria-hidden="true"></span>
    </button>
   <div id="header">
       <h1 id= "info">修改密码</h1>
   </div>
   
  
   <div class="contex">
     <form action="/pro/adm/updatePassInfo.action" method="get" onsubmit="return check();" />
		<input type="hidden" name="mId" value="<s:property value='adm.admId'/>">
		 <input type="hidden" name="admName" value=" <s:property value="adm.admName"/>">
       <div class="form-group">
         <label for="updatepass">密码:</label>
         <input type="password" class="form-control" id="updatepass" placeholder="请输入密码" name="admpress">
       </div>

       <div class="form-group">
         <label for="repass">确认密码:</label>
         <input type="password" class="form-control" id="repasss" placeholder="请再输入密码" name="readmpress">
       </div>

       <div class="butts">
         <button type="submit" class="btn btn-default" onclick="confin();">确认</button>
         <button type="reset" class="btn btn-danger">重置</button>
       </div>


     </form>
   </div>
  </body>
</html>
