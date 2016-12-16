<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
<meta charset="utf-8">
<title>工资详情</title>
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<meta charset="utf-8">

<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>

	<table class="table table-hover" border="1" align="center">
		<caption>
			<h2>您的工资详情工资如下</h2>
		</caption>
		<thead>
			<tr>
				<td>工资单编号</td>
				<td>基本工资</td>
				<td>岗位工资</td>
				<td>津贴</td>
				<td>加班工资</td>
				<td>时间</td>
			</tr>
		</thead>
		<s:iterator value="gongziall" var="b">
			<tbody>

				<tr>
					<td>${b.ID}</td>
					<td>${b.jiben}</td>
					<td>${b.gangwei}</td>
					<td>${b.jintie}</td>
					<td>${b.jiaban}</td>
					<td>${b.time}</td>

				</tr>

			</tbody>
		</s:iterator>
	</table>
	<br>
	<br>
	<br>
	<br>
	<br>
	<style media=print type="text/css">
.noprint {
	visibility: hidden
}
</style>
	<p class="noprint">
		<INPUT type=button class="btn btn-primary btn-lg btn-block" onclick=window.print() value=打印工资单 name=Button>
		<button type="button" class="btn btn-primary btn-lg btn-block"
			onclick="location.href='FunctionChoose2.jsp'">返回</button>
	</p>




</body>
</html>
