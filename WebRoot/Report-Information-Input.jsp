<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
  <head>
    
    <title>My JSP 'Report-Information-Input.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  
  <form action="Report_Information_Storage">
  <table align="center" cellpadding="5" cellspacing="5" border="10" width="80%" > 
  	<td><h2 align="center">亦可赛艇小组公司利润表</h2>
  	<h3 align="center">编制单位：亦可赛艇小组公司 &nbsp; &nbsp;&nbsp; &nbsp;<input type="month" name="month"> &nbsp; &nbsp;&nbsp; &nbsp;单位：元</h3> 
    <table align="center" cellpadding="1" cellspacing="0" border="1" width="90%" > 
    <tr align="center" height="30"> 
   	<td>项目</td>
   	<td>行次</td>
   	<td>本月数</td>
   	<td>本年累计数</td>
   	<tr align="center" height="30"> 
   	<td>营业收入</td>
   	<td>1</td>
   	<td><input type="text" name="shouruyue"></td>
   	<td><input type="text" name="shourunian"></td>
   	<tr align="center" height="30"> 
   	<td>税金</td>
   	<td>2</td>
   	<td><input type="text" name="shuijinyue"></td>
   	<td><input type="text" name="shuijinnian"></td>
   	<tr align="center" height="30"> 
   	<td>营业费用</td>
   	<td>3</td>
   	<td><input type="text" name="yingyeyue"></td>
   	<td><input type="text" name="yingyenian"></td>
   	<tr align="center" height="30"> 
   	<td>管理费用</td>
   	<td>4</td>
   	<td><input type="text" name="guanliyue"></td>
   	<td><input type="text" name="guanlinian"></td>
   	<tr align="center" height="30"> 
   	<td>财务费用</td>
   	<td>5</td>
   	<td><input type="text" name="caiwuyue"></td>
   	<td><input type="text" name="caiwunian"></td>
   	<tr align="center" height="30"> 
   	<td>投资收益</td>
   	<td>6</td>
   	<td><input type="text" name="touziyue"></td>
   	<td><input type="text" name="touzinian"></td>
   	<tr align="center" height="30"> 
   	<td>营业外收入</td>
   	<td>7</td>
   	<td><input type="text" name="wairuyue"></td>
   	<td><input type="text" name="wairunian"></td>
   	<tr align="center" height="30">
   	<td>营业外支出</td>
   	<td>8</td>
   	<td><input type="text" name="waichuyue"></td>
   	<td><input type="text" name="waichunian"></td>
   	<tr align="center" height="30">
   	<td>净利润</td>
   	<td>9</td>
   	<td><input type="text" name="lirunyue"></td>
   	<td><input type="text" name="lirunnian"></td>
   	
   	
   	</td>
   	
   	</table>
   	<br><h5 align="center">企业负责人:韩猛&nbsp;&nbsp;主管会计：张基伟&nbsp;&nbsp;制表：张卓&nbsp;&nbsp;联系电话：045186413279&nbsp;&nbsp;报出日期：<input type="date" name="date"></h5>
   	</table>
   	
   	
   	  <style
 media=print

type="text/css">

.noprint{visibility:hidden}

</style>
<p

class="noprint" align="center"><input type="submit" value="保存" >&nbsp;<button onclick=window.print() >打印</button> 	<button type="button" class="btn btn-primary btn-lg btn-block"  onclick="location.href='FunctionChoose.jsp'">返回功能选择页</button>
</p>
   	
   	</form>
  </body>
</html>
