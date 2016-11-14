<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
  <head>
    <title>财务管理系统登录界面</title>
    
	

  </head>
  
  <body>
    <h2>您输入的密码有误，请再次登录！</h2>
    账号：
	<form action="signup">
		<input type="text" name="ID"> 密码： <input type="password"
			name="password" value=""> <input type="submit">
	</form>
  </body>
</html>
