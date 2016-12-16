<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
  <head>

    
    <title>My JSP 'Report_ShowOne.jsp' starting page</title>
    
	<link rel="stylesheet" href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  
  <body align="center">
   <s:iterator value="ReportArray" var="b">
    <table align="center" cellpadding="5" cellspacing="5" border="10" width="80%" > 
  	<td><h2 align="center">亦可赛艇小组公司利润表</h2>
  	<h3 align="center">编制单位：亦可赛艇小组公司 &nbsp; &nbsp;&nbsp; &nbsp;${b.month} &nbsp; &nbsp;&nbsp; &nbsp;单位：元</h3> 
    <table align="center" cellpadding="1" cellspacing="0" border="1" width="90%" > 
    <tr align="center" height="30"> 
   	<td>项目</td>
   	<td>行次</td>
   	<td>本月数</td>
   	<td>本年累计数</td>
   	<tr align="center" height="30"> 
   	<td>营业收入</td>
   	<td>1</td>
   	<td>${b.shouruyue}</td>
   	<td>${b.shourunian}</td>
   	<tr align="center" height="30"> 
   	<td>税金</td>
   	<td>2</td>
   	<td>${b.shuijinyue}</td>
   	<td>${b.shuijinnian}</td>
   	<tr align="center" height="30"> 
   	<td>营业费用</td>
   	<td>3</td>
   	<td>${b.yingyeyue}</td>
   	<td>${b.yingyenian}</td>
   	<tr align="center" height="30"> 
   	<td>管理费用</td>
   	<td>4</td>
   	<td>${b.guanliyue}</td>
   	<td>${b.guanlinian}</td>
   	<tr align="center" height="30"> 
   	<td>财务费用</td>
   	<td>5</td>
   	<td>${b.caiwuyue}</td>
   	<td>${b.caiwunian}</td>
   	<tr align="center" height="30"> 
   	<td>投资收益</td>
   	<td>6</td>
   	<td>${b.touziyue}</td>
   	<td>${b.touzinian}</td>
   	<tr align="center" height="30"> 
   	<td>营业外收入</td>
   	<td>7</td>
   	<td>${b.wairuyue}</td>
   	<td>${b.wairunian}</td>
   	<tr align="center" height="30">
   	<td>营业外支出</td>
   	<td>8</td>
   	<td>${b.waichuyue}</td>
   	<td>${b.waichunian}</td>
   	<tr align="center" height="30">
   	<td>净利润</td>
   	<td>9</td>
   	<td>${b.lirunyue}</td>
   	<td>${b.lirunnian}</td>
   	
   	
   	</td>
   	
   	</table>
   	<br><h5 align="center">企业负责人:韩猛&nbsp;&nbsp;主管会计：张基伟&nbsp;&nbsp;制表：张卓&nbsp;&nbsp;联系电话：045186413279&nbsp;&nbsp;报出日期：${b.date}</h5>
   	</table>
   	</s:iterator>
   	
   	<br><button type="button" class="btn btn-primary btn-lg"  onclick="location.href='Report_DeleteOne.action?month=${b.month}'">删除此报表</button>
     <button type="button" class="btn btn-primary btn-lg"  onclick="location.href='Report_ShowAll.action'">返回上一页</button>
      <button type="button" class="btn btn-primary btn-lg"  onclick="location.href='FunctionChoose.jsp'">返回功能选择页</button>
  </body>
</html>
