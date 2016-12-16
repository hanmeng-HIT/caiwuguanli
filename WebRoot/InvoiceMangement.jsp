<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<html>
  <head>
    
    <title>My JSP 'InvoiceMangement.jsp' starting page</title>

  </head>
  
  <body>
    This is my JSP page. <br>
    <table width="80%" border="1">

　　<tr>

　　<th>编号</th>

　　<th>姓名</th>

　　<th>性别</th>

　　</tr>
　　</table>
  </body>
  
  <div> 
 <table cellpadding="0" cellspacing="0" border="1" width="100%"> 
 <% 
   int rows = 3;  
   int cols = 3;  
   for(int i = 0; i < rows; i++ ){ 
 %> 
  <tr align="center" height="30"> 
 <% 
    for(int j = 0; j < cols; j++ ){ 
 %> 
   <td>[<%=i+5 %>] | [<%=j+1 %>]</td>
 <% 
    } 
   } 
 %>  
 </table> 
 </div> 
</html>
