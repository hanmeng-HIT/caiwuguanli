<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
  <head>
    <title>工资详情</title>
  </head>
  
  <body>
  <h2>您的工资详情如下</h2>
    <table border="1" align="center">
      <tr>
           <td>基本工资</td>
           <td>岗位工资</td>
           <td>津贴</td>
           <td>加班工资</td>
           <td>代收个税</td>
           <td>实发工资</td>
      </tr>
      <tr>
           <td>${gbox.jiben}</td>
           <td>${gbox.gangwei}</td>
           <td>${gbox.jintie}</td>
           <td>${gbox.jiaban}</td>
      </tr>
    
    </table>
    
  </body>
</html>
