<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<div id="navbar">
	<div class="userMenu">
		<ul>
			<li class="current">
				<a href="book.do?flag=list">User首页</a>
			</li>
			<li>
				<a href="orderList.jsp">我的订单</a>
			</li>
			<li>
				<a href="car.do">购物车</a>
			</li>
			<li>
				<a href="#">注销</a>
			</li>
		</ul>
	</div>
	<form method="post" action="book.do">
		<input type="hidden" name="flag" value="search">
		搜索：
		<input class="input-text" type="text" name="keyword" />
		<input class="input-btn" type="submit" name="submit" value="" />
	</form>
</div>