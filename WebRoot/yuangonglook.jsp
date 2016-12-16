<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
<meta charset="utf-8"> 
	
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link rel="stylesheet" type="text/css" href="css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="css/demo.css">
	<link rel="stylesheet" href="css/style.css">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet" type="text/css">




<meta charset="utf-8">
<title>员工一览</title>
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>
	<table class="table table-hover" border="1" align="center">
	<thead>
		<tr>
			<td>员工号</td>
			<td>姓名</td>
			<td>年龄</td>
			<td>部门</td>
			<td>电话</td>
			<td>邮箱</td>
			<td>注销</td>
		</tr>
		</thead>
		<s:iterator value="yuangong" var="b">
		<tbody>
			<tr>
				<td>${b.ID}</td>
				<td>${b.name}</td>
				<td>${b.age}</td>
				<td>${b.bumen}</td>
				<td>${b.tele}</td>
				<td>${b.email}</td>
				<td><a
						href="yuangongdelete.action?ID=${b.ID}">
							<span class="glyphicon glyphicon-trash"></span>
					</a></td>
			</tr>
			</tbody>
		</s:iterator>

			<button type="button" class="btn btn-primary btn-lg btn-block"  onclick="location.href='FunctionChoose.jsp'">返回</button>
		
</body>
</html>
