<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<html>
  <head>
    
    <title></title>
    

  </head>
  
  <body>
   <%String ID = (String)session.getAttribute("ID");%>
    <form action="gongzisee.action" ID="ID">
    <input type="submit" value="工资管理">
    </form>
  </body>
</html>
