<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<html>
  <head>
	<meta charset="utf-8">
    <title>在线财务管理系统</title>
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
  
  <body>
  <nav class="navbar navbar-inverse" role="navigation">
	<div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="FunctionChoose.jsp">Home</a>
    </div>
    <div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="gongzisee.action">工资管理</a></li>
            <li><a href="taxjudgelook.jsp">税务统计</a></li>
            <li class="dropdown">
                <a href="yuangongsee.action" class="dropdown-toggle" data-toggle="dropdown">
                    员工管理 <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="yuangongsee1.action">总经理办公室</a></li>
                    <li><a href="yuangongsee2.action">人力资源部</a></li>
                    <li><a href="yuangongsee3.action">财务部</a></li>
                    <li><a href="yuangongsee4.action">生产技术部</a></li>
                    <li><a href="yuangongsee5.action">计划营销部</a></li>
                    <li class="divider"></li>
                    <li><a href="yuangongsee.action">所有员工</a></li>
                    <li class="divider"></li>
                    <li><a href="#">添加员工</a></li>
                </ul>
            </li>
            
            
            
        </ul>
    </div>
	</div>
</nav>
<input type="button" ID=${b.ID
						}
						class="btn btn-primary btn-lg" data-toggle="modal"
						data-target="#myModal" value="修改密码">
         
<form class="bs-example bs-example-form" action="pschange.action"
		role="form">
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">请输入新的密码</h4>
					</div>
					<div class="modal-body">

						<div style="padding: 100px 100px 10px;">
						
						
						<div class="input-group input-group-lg">
								<span class="input-group-addon">员工编号</span> <input type="text"
									name="ID" class="form-control" placeholder="请输入员工编号">
							</div>
						
						
						<br>

							<div class="input-group input-group-lg">
								<span class="input-group-addon">新密码</span> <input type="text"
									name="password" class="form-control" placeholder="请输入新密码">
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
