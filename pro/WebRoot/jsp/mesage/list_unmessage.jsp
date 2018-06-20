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
    
    <title>My JSP 'list_message.jsp' starting page</title>
    <link rel="stylesheet" href="bootstrap\css\bootstrap.min.css">
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
      th,td{
      	text-align: center;
      }
      </style>
	<script type="text/javascript">
		function updaeMes( mid ){
		
			location.href = "<s:url namespace="/mes" action="updatePage" />?msg.mId="+mid;
		
		};
	</script>
  </head>
  
  <body>
        <button type="button" class="btn btn-default" aria-label="Left Align" onclick="goback();">
      <span class="glyphicon glyphicon-home" aria-hidden="true"></span>
    </button>
   <div id="header">
       <h1 id= "info">未回复的消息</h1>
   </div>
   <div class="contex">
     <table class="table table-striped table-hover">
       <tbody>
       <% int i = 1; %>
  
       <s:iterator value="listmsg">
       <s:if test=" mState == 'n'">
		 <tr>
            <td><%=i++ %></td>
            <td><s:property value="mWName"/></td>
            <td><s:property value="mWInfo"/></td>
            <td><s:property value="mWDate"/></td>    
            <td>
              <button id="delb" class="btn btn-default btn-sm" onclick = "updaeMes(<s:property value='mId'/>);" >
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
           <th>反馈人</th>
           <th>反馈信息</th>
           <th>反馈日期</th>
           <th>操作</th>
         </tr>
       </thead>
     </table>
   </div>
  </body>
</html>
