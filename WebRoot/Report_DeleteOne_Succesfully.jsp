<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
  <head>
    
    <title>My JSP 'Report_DeleteOne_Succesfully.jsp' starting page</title>
    
	<link rel="stylesheet" href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  </head>
  
  <body align="center">
     <table cellpadding="5" cellspacing="5" border="1" width="100%"  > 
   <tr align="center" height="30">
   <td><h1>成功删除所选报表</h1></td>
   </table><br>
   <button type="button" class="btn btn-primary btn-lg"  onclick="location.href='Report_ShowAll.action'">返回继续查看历史记录</button>
   <button type="button" class="btn btn-primary btn-lg"  onclick="location.href='FunctionChoose.jsp'">返回功能选择页</button>
  </body>
</html>
