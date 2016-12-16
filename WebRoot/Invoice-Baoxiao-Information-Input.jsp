<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
  <head>
	
<link rel="stylesheet" href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  
  <body align="center">
  
   <h3 align="center"><br>请输入要进行报销的发票信息: <br> <br> <br>
    <form action="Invoice_Baoxiao_Information_Storage">
    <div > 
   		   开票日期*：<input type="date" name="Date_kai">&nbsp;&nbsp;&nbsp;&nbsp;
   		   报销日期*：<input type="date" name="Date_bao"><br><br></h3>
 <table cellpadding="1" cellspacing="1" border="10" width="80%"  align="center"> 
 	<tr align="center" height="30"> 
   <td>机打代码*</td>
   <td><input type="text" name="code"></td>
   <td>机打号码*</td>
   <td><input type="text" name="number"></td>
   
   <tr align="center" height="30"> 
   <td>付款单位名称*</td>
   <td><input type="text" name="fukuandanweimingcheng"></td>
   <td>付款单位代码</td>
   <td><input type="text" name="fukuandanweidaima"></td>
   
   <tr align="center" height="30"> 
   <td>货物获应税劳务服务名称*</td>
   <td>规格型号</td>
   <td>单位</td>
   <td>数量</td>
   
   
   <tr align="center" height="30"> 
   <td><input type="text" name="huowumingcheng"></td>
   <td><input type="text" name="xinghao"></td>
   <td><input type="text" name="danwei"></td>
   <td><input type="text" name="shuliang"></td>
    <tr align="center" height="30">
   <td>单价</td>
   <td>金额*</td>
   <td>大写合计*</td>
   
   <td>合计*</td>
   
    <tr align="center" height="30">
   <td><input type="text" name="danjia"></td>
   <td><input type="text" name="jine"></td>
   <td><input type="text" name="daxieheji"></td>
   <td><input type="text" name="heji"></td>
   
   
   
    <tr align="center" height="30"> 
   <td>收款单位名称*</td>
   <td><input type="text" name="shoukuandanwei"></td>
   <td></td>
  <td></td>
   
   
   
   <tr align="center" height="30"> 
   <td>备注</td>
   <td><input type="text" name="beizhu"></td>
   <td>纳税人识别号</td>
   <td><input type="text" name="nashuiren"></td>
   
 </table> <br>
 <input type="submit" class="btn btn-primary btn-lg"  value="保存">&nbsp;&nbsp;&nbsp;&nbsp;
 
 </form>
 <button type="button" class="btn btn-primary btn-lg" align="center" onclick="location.href='FunctionChoose.jsp'" >返回功能选择页</button>
  </body>
</html>
