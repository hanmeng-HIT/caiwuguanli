<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
<meta charset="utf-8">
<title>税务统计</title>
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

	<button class="btn btn-primary btn-lg" data-toggle="modal"
		data-target="#myModal">查询/新建税务表</button>
	<!-- 模态框（Modal） -->
	<form action="taxjudge.action" class="bs-example bs-example-form"
		role="form">
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">
							请输入想查询/添加税务报表的编号（编号格式为年+月）</h4>
					</div>
					<div class="modal-body">

						<div style="padding: 100px 100px 10px;">
							<div class="input-group input-group-lg">
								<span class="input-group-addon">编号</span> <input type="text"
									name="taxnumber" class="form-control"
									placeholder="请输入想查询/添加税务报表的编号（编号格式为年+月）">
							</div>
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
	</form>
</body>
</html>
