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
  <%String ID = (String)session.getAttribute("ID");%>
  <nav class="navbar navbar-inverse" role="navigation">
	<div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="FunctionChoose.jsp">Home</a>
    </div>
    <div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="gongziseeall.action?ID=<%=(String)session.getAttribute("ID")%>">我的工资</a></li>
       
            
            <li><a type="button" ID=${b.ID
						}
						class="btn btn-primary btn-lg" data-toggle="modal"
						data-target="#myModal1" value="修改密码">修改密码</a></li>
            
            
        </ul>
    </div>
	</div>
</nav>

         
<form class="bs-example bs-example-form" action="pschange2.action?ID=<%=(String)session.getAttribute("ID")%>"
		role="form">
		<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">更改密码</h4>
					</div>
					<div class="modal-body">

						<div style="padding: 100px 100px 10px;">
						
						<div class="input-group input-group-lg">
								<span class="input-group-addon">员工ID</span> <input type="text"
									name="ID" class="form-control" readonly="readonly" value=<%=(String)session.getAttribute("ID")%>>
							</div>
						
						
						<div class="input-group input-group-lg">
								<span class="input-group-addon">请输入旧的密码</span> <input type="text"
									name="oldps" class="form-control" placeholder="请输入旧密码">
							</div>
						
						
						<br>
						<div class="input-group input-group-lg">
								<span class="input-group-addon">请输入新的密码</span> <input type="text"
									name="newps" class="form-control" placeholder="请输入新密码">
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
