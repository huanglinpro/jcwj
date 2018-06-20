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
    
    <title>My JSP 'findShoes.jsp' starting page</title>
    
    <meta cahrset="charset">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
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
          height: 500px;
          width: 600px;
          margin: 0 auto;
      }
      .butts{
        text-align: center;
      }
	
    </style>
	<link rel="stylesheet" href="bootstrap\css\bootstrap.min.css">
	<script type="text/javascript" src="Jquery/jquery-3.2.1.js"></script>

    </script>
    <script type="text/javascript" >


     $(document).ready(function(){
     	//var inf = $("#serchfor").text();
     	 	
      $("#serchfor").blur(function(){
      var inf = document.getElementById("serchfor").value;
    	location.href="<s:url namespace="/user" action="findUser.action"/>?searchinfo="+inf;
 
      });
      
    });
    


    </script>
  </head>
  
  <body>
    
      <button type="button" class="btn btn-default" aria-label="Left Align" onclick="goback();">
      <span class="glyphicon glyphicon-home" aria-hidden="true"></span>
    </button>
   <div id="header">
       <h1 id= "info">鞋子查询</h1>
   </div>
	
   <div class="contex">
     <form class="form-horizontal" action="index.html" method="post">
       <div class="form-group">
         <div class="col-sm-12">
       
           <input type="text" class="form-control" id="serchfor" placeholder="用户编号" name="searchinfo">
  
         </div>
       </div>
     </form>
   </div>
    
  </body>
</html>
