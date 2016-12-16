<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
  <head>  
    
    <title>My JSP 'Invoice_Baoxiao_Search_Keyword_Datekai_Input.jsp' starting page</title>
    
	<link rel="stylesheet" href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>


  </head>
  
  <body align="center">
  <br>  <h1>请输入要搜索的开票日期： <br> <br> <br>
  <form action="Invoice_Baoxiao_Search">
    <div > 
   		   开票日期：<input type="date" name="datekai">&nbsp;&nbsp;&nbsp;&nbsp;</h1>
 </div> <br>
 <input type="submit" value="搜索" class="btn btn-primary btn-lg" >
 </form>
  </body>
</html>
