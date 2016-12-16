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
  <style>
body {
	
	margin-top:0px;
 margin-right:0px;
 margin-bottom:0px;
 margin-left:0px;
 background-image: url("media/15.jpg");
 background-repeat:no-repeat;
 background-position:center center;
 background-attachment:fixed;
}
</style>
  <nav class="navbar navbar-inverse" role="navigation">
	<div class="container">
    <div class="navbar-header">
        <a class="navbar-brand" href="FunctionChoose.jsp">Home</a>
    </div>
    <div>
        <ul class="nav navbar-nav">
        <li><a href="gongzisee.action">工资管理</a></li>
        
            
            
            
            
            
            
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    税务统计 <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="taxallsee.action">税务记录</a></li>
                    <li><a data-toggle="modal"
			data-target="#myModal2" value="添加员工">查询/新建税务表</a></li>
                </ul>
            </li>
            
            
            
            
            
            
            
            
            
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
                    <li><a data-toggle="modal"
			data-target="#myModal" value="添加员工">添加员工</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="yuangongsee.action" class="dropdown-toggle" data-toggle="dropdown">
                    发票管理 <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="Invoice-Baoxiao-Information-Input.jsp">发票报销信息登入</a></li>
                    <li class="divider"></li>
                    <li><a href="Invoice-Kai-Information-Input.jsp">发票开据</a></li>
                    <li class="divider"></li>
                    <li><a href="Invoice_Baoxiao_ShowAll.action">发票报销历史记录查询</a></li>
                    <li class="divider"></li>
                    <li><a href="Invoice_Kai_ShowAll.action">发票开据历史记录查询</a></li>
                </ul>
            </li>
            <li><a type="button" ID=${b.ID
						}
						class="btn btn-primary btn-lg" data-toggle="modal"
						data-target="#myModal1" value="修改密码">修改密码</a></li>
            <li class="dropdown">
                <a href="yuangongsee.action" class="dropdown-toggle" data-toggle="dropdown">
                    财务报表管理 <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="Report-Information-Input.jsp">新一季度财务报表信息登入</a></li>
                    <li class="divider"></li>
                    <li><a href="Report_ShowAll.action">报表历史记录查询</a></li>
                    
                </ul>
            </li>
            
        </ul>
    </div>
	</div>
</nav>



         
<form class="bs-example bs-example-form" action="pschange.action"
		role="form">
		<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
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
								<button type="submit" class="btn btn-primary">提交</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal -->
				</div>
			</div>
		</form>
  <form action="taxjudge.action" class="bs-example bs-example-form"
		role="form">
		<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
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
