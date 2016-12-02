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
<title>添加员工</title>
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
	
	
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
<div class="htmleaf-container">
<svg id="svg-source" height="0" version="1.1" xmlns="http://www.w3.org/2000/svg" style="position:absolute; margin-left: -100%" xmlns:xlink="http://www.w3.org/1999/xlink">
		<g id="close-icon">
			<path d="M0.014,1.778L1.79,0.001l30.196,30.221l-1.778,1.777L0.014,1.778z"/>
			<path d="M1.79,31.999l-1.776-1.777L30.208,0.001l1.778,1.777L1.79,31.999z"/>
		</g>
	</svg>
	</div>

<br><br><br><br><br>

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

		<button class="btn btn-primary btn-lg btn-block" data-toggle="modal"
			data-target="#myModal">添加</button>
			<button type="button" class="btn btn-primary btn-lg btn-block"  onclick="location.href='FunctionChoose.jsp'">返回</button>
			<br><br><br>
		<form class="bs-example bs-example-form" action="yuangongadd.action"
			role="form">
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">请填写员工信息</h4>
						</div>
						<div class="modal-body">

							<div style="padding: 100px 100px 10px;">

								<div class="input-group input-group-lg">
									<span class="input-group-addon">姓名</span> <input type="text"
										name="name" class="form-control" placeholder="员工姓名">
								</div>
								<br>
								<div class="input-group input-group-lg">
									<span class="input-group-addon">年龄</span> <input type="text"
										name="age" class="form-control" placeholder="员工年龄">
								</div>
								<br>
								<div class="input-group input-group-lg">
									<span class="input-group-addon">电话</span> <input type="text"
										name="tele" class="form-control" placeholder="员工电话">
								</div>
								<br>
								<div class="input-group input-group-lg">
									<span class="input-group-addon">邮箱</span> <input type="text"
										name="email" class="form-control" placeholder="员工邮箱">
								</div>
								<br>
								<div class="input-group input-group-lg">
									<span class="input-group-addon">部门</span> <input type="text"
										name="bumen" class="form-control" placeholder="所在部门">
								</div>
								<br>



							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">关闭</button>
								<button type="submit" class="btn btn-primary">提交</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal -->
				</div>
			</div>
		</form>
</body>
</html>
