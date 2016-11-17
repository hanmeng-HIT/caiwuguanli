<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
  <head>
    <title>工资详情</title>
  </head>
  
  <body>
  <h2>员工总体工资如下</h2>
    <table border="1" align="center">
      <tr>
           <td>员工号</td>
           <td>姓名</td>
           <td>基本工资</td>
           <td>岗位工资</td>
           <td>津贴</td>
           <td>加班工资</td>
           <td>代收个税</td>
           <td>实发工资</td>
      </tr>
      <s:iterator value="gtax" var="b">
      <tr>
           <td>${b.ID}</td>
           <td>${b.name}</td>
           <td>${b.jiben}</td>
           <td>${b.gangwei}</td>
           <td>${b.jintie}</td>
           <td>${b.jiaban}</td>
           <td>${b.gtax}</td>
           <td>${b.truemoney}</td>
      </tr>
      </s:iterator>
    
    </table>
    
  </body>
</html>
