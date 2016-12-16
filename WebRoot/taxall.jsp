<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
  <head>
    <link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    <title>所有税务记录</title>
    

  </head>
  
  <body>
    <table class="table table-hover" border="1" align="center">
	<thead>
		<tr>
			<td>税务单编号</td>
			<td>营业税</td>
			<td>增值税</td>
			<td>应纳城建税</td>
			<td>应纳教育税</td>
			<td>代收个人所得税</td>
		</tr>
		</thead>
		<s:iterator value="taxall" var="b">
		<tbody>
			<tr>
				<td>${b.taxnumber}</td>
				<td>${b.taxyingye}</td>
				<td>${b.taxzengzhi}</td>
				<td>${b.taxyncj}</td>
				<td>${b.taxynjy}</td>
				<td>${b.taxsuode}</td>
			</tr>
			</tbody>
		</s:iterator>
  </body>
</html>
