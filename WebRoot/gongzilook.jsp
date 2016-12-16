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
		<caption><h2>员工总体工资如下</h2></caption>
		<thead>
			<tr>
				<td>员工号</td>
				<td>姓名</td>
				<td>基本工资</td>
				<td>岗位工资</td>
				<td>津贴</td>
				<td>加班工资</td> 
				<td>代收个税</td>
				<td>实发工资</td>
				<td>时间</td>
				<td>操作</td>
			</tr>
		</thead>
		<s:iterator value="gbox" var="b">
			<tbody>

				<tr>
					<td>${b.ID}</td>
					<td>${b.name}</td>
					<td>${b.jiben}</td>
					<td>${b.gangwei}</td>
					<td>${b.jintie}</td>
					<td>${b.jiaban}</td>
					<td>${b.gtax}</td>
					<td>${b.truemoney}</td>
					<td>${b.time}</td>
					<td><input type="button" ID=${b.ID
						}
						class="btn btn-primary btn-lg" data-toggle="modal"
						data-target="#myModal" value="编辑"></td>
				</tr>

			</tbody>
		</s:iterator>
	</table>
	<br>

<button type="button" class="btn btn-primary btn-lg btn-block"  onclick="location.href='FunctionChoose.jsp'">返回</button>



	<form class="bs-example bs-example-form" action="gongzimake.action"
		role="form">
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">请填写各项工资信息</h4>
					</div>
					<div class="modal-body">

						<div style="padding: 100px 100px 10px;">
						
						
						<div class="input-group input-group-lg">
								<span class="input-group-addon">员工编号</span> <input type="text"
									name="ID" class="form-control" placeholder="${b.ID}">
							</div>
						
						
						<br>

							<div class="input-group input-group-lg">
								<span class="input-group-addon">基本工资</span> <input type="text"
									name="jiben" class="form-control" placeholder="请输入基本工资">
							</div>
							<br>
							<div class="input-group input-group-lg">
								<span class="input-group-addon">岗位工资</span> <input type="text"
									name="gangwei" class="form-control" placeholder="请输入岗位工资">
							</div>
							<br>
							

								<div class="input-group input-group-lg">
									<span class="input-group-addon">津贴</span> <input type="text"
										name="jintie" class="form-control" placeholder="请输入津贴">
								</div>
								<br>
								<div class="input-group input-group-lg">
									<span class="input-group-addon">加班工资</span> <input type="text"
										name="jiaban" class="form-control" placeholder="请输入加班工资">
									<br>
								</div>
								<div class="input-group input-group-lg">
									<span class="input-group-addon">时间</span> <input type="text"
										name="time" class="form-control" placeholder="请输入此工资单时间">
									<br>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">关闭</button>
									<button type="submit" class="btn btn-primary">提交</button>
								</div>
							</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
