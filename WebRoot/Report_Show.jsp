<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
  <head>
    
    <title>My JSP 'Report_Show.jsp' starting page</title>
    
	<link rel="stylesheet" href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  </head>
  
  <body  align="center">
     <br><h1>历史记录中的报表有：&nbsp;&nbsp;&nbsp;&nbsp; <br><br></h1>
    <table  align="center" cellpadding="0" cellspacing="5" border="10" width="50%" > 
    
    <tr align="center" height="30"> 
    <td><button type="button" class="btn btn-primary btn-lg"  onclick="location.href='Report_Search_Keyword_Month_Input.jsp'">按季度搜索</button></td>    
    <td> </td>
    <td> </td>
    <tr align="center" height="30"> 
    <td>季度</td>
    <td> </td>
    <td> </td>
   
   <s:iterator value="ReportArray" var="b">
				<tr align="center" height="30">
					<td width="80%">${b.month}</td>
					<td width="10%"><a  href="Report_Search_Month.action?month=${b.month}">查看该报表</a></td>
					<td width="10%"><a  href="Report_DeleteOne.action?month=${b.month}">删除该报表</a></td>
				</tr>
		</s:iterator>
	</table><br>
	<button type="button" class="btn btn-primary btn-lg"  onclick="location.href='FunctionChoose.jsp'">返回功能选择页</button>
	<button type="button" class="btn btn-primary btn-lg"  onclick="location.href='Report_ShowAll.action'">返回继续查看所有历史记录</button>
  </body>
</html>
