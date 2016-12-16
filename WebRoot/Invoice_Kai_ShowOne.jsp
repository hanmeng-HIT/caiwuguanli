<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
  <head>
    
    <title>My JSP 'Invoice_Kai_ShowOne.jsp' starting page</title>
    
	<link rel="stylesheet" href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  </head>
  
  <body align="center">
  

  
  
  <s:iterator value="InvoiceArray1" var="b">
     <table cellpadding="5" cellspacing="5" border="10" width="100%" > 
     
  	<td><h1 align="center">亦可赛艇小组公司通用机打发票</h1>
  	<h3>日期：${b.date}</h3>
    <table cellpadding="1" cellspacing="0" border="1" width="90%" > 
    <tr align="center" height="30"> 
   	<td>客户名</td>
   	<td>${b.username}</td>
   	<td>发票代码</td>
   	<td>${b.code}</td>
   	<td>发票号码</td>
   	<td>${b.number}</td>
   	
 	<tr align="center" height="30"> 
   	<td>货号</td>
   	<td>品名</td>
   	<td>单位</td>
   	<td>单价</td>
   	<td>数量</td>
   	<td>金额</td>
   	
   	<tr align="center" height="30"> 
   	<td>${b.huohao}</td>
   	<td>${b.pinming}</td>
   	<td>${b.danwei}</td>
   	<td>${b.danjia}</td>
   	<td>${b.shuliang}</td>
   	<td>${b.jine}</td>
   	<tr align="center" height="30"> 
   	<td>大写合计</td>
   	<td>${b.daxieheji}</td>
   	<td>合计</td>
   	<td>${b.heji}</td>
   	<td>备注</td>
   	<td>${b.beizhu}</td>
   	
   	</td>
   	</table>
   	</table>
   	 </s:iterator>
   	 <br><button type="button" class="btn btn-primary btn-lg"  onclick="location.href='Invoice_Kai_DeleteOne.action?code=${b.code}'">删除此发票</button>
     <button type="button" class="btn btn-primary btn-lg"  onclick="location.href='Invoice_Kai_ShowAll.action'">返回上一页</button>
      <button type="button" class="btn btn-primary btn-lg"  onclick="location.href='FunctionChoose.jsp'">返回功能选择页</button>
   	 
  </body>
</html>
