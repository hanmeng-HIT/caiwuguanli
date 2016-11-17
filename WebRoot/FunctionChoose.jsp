<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<html>
  <head>
    
    <title>管理员页面</title>
    

  </head>
  
  <body>
    <form action="gongzisee.action">
    <input type="submit" value="工资管理">
    </form>
    <form action="yuangongsee.action">
    <input type="submit" value="员工管理">
    </form>
    <form action="taxjudge.jsp">
    <input type="submit" value="税务统计">
    </form>
  </body>
</html>
