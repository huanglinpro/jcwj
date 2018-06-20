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
      </style>
	<script type="text/javascript">
		function removeMes( mid ){
		if(confirm("确认删除？")){
			location.href = "<s:url namespace="/mes" action="delMes" />?msg.mId="+mid;
			}
		};
	</script>
  </head>
  
  <body>
        <button type="button" class="btn btn-default" aria-label="Left Align" onclick="goback();">
      <span class="glyphicon glyphicon-home" aria-hidden="true"></span>
    </button>
   <div id="header">
       <h1 id= "info">列出所有的消息</h1>
   </div>
   <div class="contex">
     <table class="table table-striped table-hover">
       <tbody>
       <% int i = 1; %>
  
       <s:iterator value="listmsg">
       <s:if test=" mState == 'y'">
		 <tr>
            <td><%=i++ %></td>
            <td><s:property value="mWName"/></td>
            <td><s:property value="mWInfo"/></td>
            <td><s:property value="mWDate"/></td>
            <td><s:property value="mRName"/></td>
            <td><s:property value="mRInfo"/></td>
            <td><s:property value="mRDate"/></td>
            <td>
              <button id="delb" class="btn btn-default btn-sm" onclick = "removeMes(<s:property value='mId'/>);" >
                  <span class="glyphicon glyphicon-trash del" style="color:red;" /> 
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
           <th>回复人</th>
           <th>回复信息</th>
           <th>回复日期</th>
           <th>操作</th>
         </tr>
       </thead>
     </table>
   </div>
  </body>
</html>
