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
    
    <title>My JSP 'list_user.jsp' starting page</title>
    
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
	<script type="text/javascript">
		function removeMes(id){
			location.href="<s:url namespace="/user" action="bkUpPage"/>?user.userId="+id;
		};
	</script>

  </head>
  
  <body>
     <button type="button" class="btn btn-default" aria-label="Left Align" onclick="goback();">
    	<span class="glyphicon glyphicon-home" aria-hidden="true"></span>
  	</button>
 	<div id="header">
     	<h1 id= "info">用户列表</h1>
 	</div>
 	<div class="contex">
 	<% int i = 1; %>
     <table class="table table-striped table-hover">
       <tbody>
       <s:iterator value="userlist">
        <s:if test="userPow == 'f'">
         <tr>
           <td><%=i++ %></td>
           <td><s:property value="userName"/></td>
           <td><s:property value="userRealName"/></td>
           <td><s:property value="userPhone"/></td>
           <td><s:property value="userAddress"/></td>
           <td><s:property value="userPow"/></td>
           <td><s:property value="userDate"/></td>
        
       	   <td>
           	<button id="delb" class="btn btn-default btn-sm" onclick = "removeMes(<s:property value='userId'/>);" >
               <span class="glyphicon glyphicon-pencil fix" style="color:green;" />
            </button>
           </td> 
      
         </tr>
         </s:if>
         </s:iterator>
       </tbody>
       <thead>
        <tr>
          <th>序号</th>
          <th>用户名</th>
          <th>真名</th>
          <th>电话</th>
          <th>地址</th>
          <th>权限</th>
          <th>加入日期</th>
          <th>操作</th>
        </tr>
       </thead>
     </table>
   </div>
 	
  </body>
</html>
