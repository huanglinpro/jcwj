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
    
    <title>My JSP 'adm_info.jsp' starting page</title>
    
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
        #contex{
            /* border: 1px solid red; */
            height: 500px;
            width: 560px;
            margin: 0 auto;
            
        }
        #header{
            text-align: center;
        }
        .items{
            margin-top:75px;
            margin-left: 55px;
        }
        .item_contex{
            margin-left: 20px;
        }
        h1{
             color: #28AAE4;
            font-family: 宋体;
        }
        .buts{
            /* border: 1px solid blue; */
            /* margin: 0 auto; */
            text-align: center;
            margin-top: 35px;
        }
    </style>
    
        <script>
        function goback() {
            onload.href="";
        };

        function changepass( id , name ){
           location.href = "<s:url namespace='/adm' action='updatePass.action' />?adm.admId="+id+"&adm.admName="+name;
        };

        function cahngeinfo( id ){
           location.href = "<s:url namespace="/adm" action="updatePass.action" />?adm.admId="+id;
        };

    </script>
  </head>
  
  <body>
    <button type="button" class="btn btn-default" aria-label="Left Align" onclick="goback();">
        <span class="glyphicon glyphicon-home" aria-hidden="true"></span>
    </button>
    <div id="header">
        <h1>管理员个人详细信息</h1>
    </div>
 
    <div id="contex">
        <div class="items">
            <span> 
                <h4>用户名: <span class="item_contex"> <s:property value="adm.admName"/> </span> </h4> 
            </span>
        </div>
        <div class="items">
            <span>
                <h4>真实姓名: <span class="item_contex"> <s:property value="adm.admRealName"/> </span> </h4> 
            </span>
        </div>
        <div class="items">
            <span>
                <h4>电话: <span class="item_contex"> <s:property value="adm.admPhone"/>  </span> </h4> 
            </span>
        </div>
        <div class="items">
            <span>
                <h4>邮箱: <span class="item_contex"> <s:property value="adm.admEmail"/> </span> </h4>
            </span>
        </div>
        <div class="buts">
            <button class="btn btn-danger"  onclick="changepass(<s:property value='adm.admId'/>,'<s:property value="adm.admName"/>');">修改密码</button>
            <button class="btn btn-info" onclick="cahngeinfo(<s:property value='adm.admId'/>);">修改个人信息</button>
        </div>
        
    </div>
  </body>
</html>
