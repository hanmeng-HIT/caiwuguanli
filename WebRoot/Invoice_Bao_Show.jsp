
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
  <head>      
    <title>My JSP 'Invoice_Bao_Show.jsp' starting page</title>
    <link rel="stylesheet" href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  
  <body align="center">
    <h1>历史记录中的发票有：</h1>&nbsp;&nbsp;&nbsp;&nbsp; <br><br>
    <table cellpadding="5" cellspacing="5" border="10" width="100%"  > 
    
    <tr align="center" height="30"> 
    <td><button type="button" class="btn btn-primary btn-sm"onclick="location.href='Invoice_Baoxiao_Search_Keyword_Datekai_Input.jsp'">按开票日期搜索</button></td>
    <td><button type="button" class="btn btn-primary btn-sm"  onclick="location.href='Invoice_Baoxiao_Search_Keyword_Datebao_Input.jsp'">按报销日期搜索</button></td>
   <td><button type="button" class="btn btn-primary btn-sm" onclick="location.href='Invoice_Baoxiao_Search_Keyword_Code_Input.jsp'">按机打代码搜索</button></td>
   <td><button type="button" class="btn btn-primary btn-sm"  onclick="location.href='Invoice_Baoxiao_Search_Keyword_Number_Input.jsp'">按机打号码搜索</button></td>
   <td><button type="button" class="btn btn-primary btn-sm"  onclick="location.href='Invoice_Baoxiao_Search_Keyword_Huowumingcheng_Input.jsp'">按货物名称搜索</button></td>
   <td><button type="button" class="btn btn-primary btn-sm" onclick="location.href='Invoice_Baoxiao_Search_Keyword_Heji_Input.jsp'">按合计搜索</button></td>
   <td><button type="button" class="btn btn-primary btn-sm"  onclick="location.href='Invoice_Baoxiao_Search_Keyword_Shoukuandanwei_Input.jsp'">按收款单位搜索</button></td>
    <td> </td>
    <td> </td>
    <tr align="center" height="30"> 
    <td>开票日期</td>
    <td>报销日期</td>
   <td>机打代码</td>
   <td>机打号码</td>
   <td>货物或应税劳务服务名称</td>
   <td>合计</td>
   <td>收款单位名称</td>
   <td> </td>
    <td> </td>
   
   <s:iterator value="InvoiceArray" var="b">
				<tr align="center" height="30">
					<td>${b.datekai}</td>
					<td>${b.datebao}</td>
					<td>${b.code}</td>
					<td>${b.number}</td>
					<td>${b.huowumingcheng}</td>
					<td>${b.heji}</td>
					<td>${b.shoukuandanwei}</td>
					<td><a href="Invoice_Baoxiao_ShowOne.action?code=${b.code}">查看该发票的具体信息</a></td>
					<td><a href="Invoice_Baoxiao_DeleteOne.action?code=${b.code}">删除该发票</a></td>
				</tr>
		</s:iterator>
	</table><br>
	<button type="button" class="btn btn-primary btn-lg"  onclick="location.href='FunctionChoose.jsp'">返回功能选择页</button>
	<button type="button" class="btn btn-primary btn-lg"  onclick="location.href='Invoice_Baoxiao_ShowAll.action'">返回继续查看所有记录</button>
  </body>	
</html>
 
