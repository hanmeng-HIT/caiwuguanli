<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
  <head>
    <title>My JSP 'Invoice_Bao_ShowOne.jsp' starting page</title>
    <link rel="stylesheet" href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  
  <body align="center">
    <form action="Invoice_Baoxiao_ShowOne">
     <s:iterator value="InvoiceArray1" var="b">
    <div > 
   		 <h4> 开票日期：${b.datebao}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   		   报销日期：${b.datekai}<br><br></h4>
 <table cellpadding="5" cellspacing="5" border="10" height="60%" width="100%"  > 
 	<tr align="center" height="30"> 
   <td width="20%">机打代码</td>
   <td width="20%">${b.code}</td>
   <td width="20%">机打号码</td>
   <td width="20%">${b.number}</td>
   
   <tr align="center" height="30"> 
   <td>付款单位名称</td>
   <td>${b.fukuandanweimingcheng}</td>
   <td>付款单位代码</td>
   <td>${b.fukuandanweidaima}</td>
   
   <tr align="center" height="30"> 
   <td>货物获应税劳务服务名称</td>
   <td>规格型号</td>
   <td>单位</td>
   <td>数量</td>
   
   
   <tr align="center" height="30"> 
   <td>${b.huowumingcheng}</td>
   <td>${b.xinghao}</td>
   <td>${b.danwei}</td>
   <td>${b.shuliang}</td>
   
   <tr align="center" height="30"> 
   <td >单价</td>
  
   <td>${b.danjia}</td>
    <td >金额</td>
   <td>${b.jine}</td>
   
   <tr align="center" height="30"> 
   <td>大写合计</td>
   <td>${b.daxieheji}</td>
   <td>合计</td>
   <td>${b.heji}</td>
   
    <tr align="center" height="30"> 
   <td>收款单位名称</td>
   <td>${b.shoukuandanwei}</td>
   <td>纳税人识别号</td>
   <td>${b.nashuiren}</td>
   
   <tr align="center" height="30"> 
   <td>备注</td>
   <td>${b.beizhu}</td>
   <td> </td>
   <td> </td>
   
 </table> 
 </div> <br>
 </s:iterator>
 </form>
 	 <button type="button" class="btn btn-primary btn-lg"  onclick="location.href='Invoice_Baoxiao_DeleteOne.action?code=${b.code}'">删除此发票</button>
     <button type="button" class="btn btn-primary btn-lg"  onclick="location.href='Invoice_Baoxiao_ShowAll.action'">返回上一页</button>
      <button type="button" class="btn btn-primary btn-lg"  onclick="location.href='FunctionChoose.jsp'">返回功能选择页</button>
  </body>
</html>
