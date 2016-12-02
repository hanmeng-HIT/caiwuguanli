<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
  <head>
    
    <title>税务统计</title>
    

  </head>
  
  <body>
  <h2>本月各项税务统计如下</h2>
  <table border="1" align="center">
      <tr>
           <td>税务报表编号</td>
           <td>营业税</td>
           <td>增值税</td>
           <td>应纳城建税</td>
           <td>应纳教育税附加</td>
           <td>总代收个人所得税</td>
      </tr>
      <tr>
           <td>${tbox.taxnumber}</td>
           <td>${tbox.taxyingye}</td>
           <td>${tbox.taxzengzhi}</td>
           <td>${tbox.taxyncj}</td>
           <td>${tbox.taxynjy}</td>
           <td>${tbox.taxsuode}</td>
      </tr>
    </table>
  </body>
</html>
