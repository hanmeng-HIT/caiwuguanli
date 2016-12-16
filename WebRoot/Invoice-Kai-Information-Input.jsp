<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
  <head>
    
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  </head>
  
  <body align="center">
  <br><br><br><br><br><br><br>
  <form action="Invoice_Kai_Information_Storage">
  <table cellpadding="5" cellspacing="5" border="10" width="100%" > 
  	<td><h1 align="center">亦可赛艇小组公司通用机打发票</h1>
  	<h3>日期：<input type="date" name="date"></h3>
    <table cellpadding="1" cellspacing="0" border="1" width="100%" > 
    <tr align="center" height="30"> 
   	<td>客户名</td>
   	<td><input type="text" name="username"></td>
   	<td>发票代码</td>
   	<td><input type="text" name="code"></td>
   	<td>发票号码</td>
   	<td><input type="text" name="number"></td>
   	
 	<tr align="center" height="30"> 
   	<td>货号</td>
   	<td>品名</td>
   	<td>单位</td>
   	<td>单价</td>
   	<td>数量</td>
   	<td>金额</td>
   	
   	<tr align="center" height="30"> 
   	<td><input type="text" name="huohao"></td>
   	<td><input type="text" name="pinming"></td>
   	<td><input type="text" name="danwei"></td>
   	<td><input type="text" name="danjia"></td>
   	<td><input type="text" name="shuliang"></td>
   	<td><input type="text" name="jine"></td>
   	<tr align="center" height="30"> 
   	<td>大写合计</td>
   	<td><input type="text" name="daxieheji"></td>
   	<td>合计</td>
   	<td><input type="text" name="heji"></td>
   	<td>备注</td>
   	<td><input type="text" name="beizhu"></td>
   	
   	</td>
   	</table>
   	</table>
   	
   	
   	  <style
 media=print

type="text/css">

.noprint{visibility:hidden}

</style>
<p

class="noprint"><br><input type="submit" class="btn btn-primary btn-lg" value="开据并保存" onclick=window.print()  name=Button> 	<button type="button" class="btn btn-primary btn-lg"  onclick="location.href='FunctionChoose.jsp'">返回功能选择页</button>
</p>
   	
   	</form>
  
   	
   	
   	
   	
  </body>
</html>
