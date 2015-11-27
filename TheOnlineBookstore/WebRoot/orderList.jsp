<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
    <title>My JSP 'orderList.jsp' starting page</title>
    
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
    <div id="header" class="wrap">
	<div id="logo">网上书城</div>
	<%@include file="jsp/top.jsp"%>
</div>
<div id="content" class="wrap">
	<div class="list orderList">
		<input type="hidden" name="flag" value="list" />
			<table>
				<tr class="title">
					<th class="orderId">订单编号</th>
					<th>订单商品</th>
					<th class="userName">收货人</th>
					<th class="price">订单金额</th>
					<th class="createDate">下单时间</th>
					<th class="status">订单状态</th>
				</tr>
					<c:forEach items="${itemList}" var= "item">
				<tr>
					<td>${item.iid }</td>
					<td class="thumb"><img src="${book.images }" /></td>
					<td>${userinfo.name }</td>
					<td>${item.price }</td>
					<td>${item.createDate }</td>
					<td>已完成</td>
				</tr>
				</c:forEach>
			</table>
			<div class="page-spliter">
					
						当前页数:[${pageNo } / ${totalPage }]&nbsp;
						<a href="book.do?flag=${flag }&pageNo=1">首页</a>
						<c:if test="${pageNo > 1}">
							<a href="book.do?flag=${flag }&pageNo=${ pageNo-1 }">上一页</a>&nbsp;
						</c:if>
						<c:if test="${pageNo < totalPage }">
							<a href="book.do?flag=${flag }&pageNo=${ pageNo+1 }">下一页</a>&nbsp;
						</c:if>
						<a href="book.do?flag=${flag }&pageNo=${totalPage}">尾页</a>
						
					</div>
			<div class="button"><input class="input-gray" type="submit" name="submit" value="查看一个月前的订单" /><input class="input-gray" type="submit" name="submit" value="查看一个月前的订单" /></div>
	</div>
</div>
<div id="footer" class="wrap">
	网上书城 &copy; 版权所有</div>
  </body>
</html>
