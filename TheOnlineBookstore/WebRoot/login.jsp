<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title></title>
		<link type="text/css" rel="stylesheet" href="css/style.css" />
	</head>
	<body>
		<div id="header" class="wrap">
			<div id="logo">
				网上书城
			</div>
			<div id="navbar">
				<form method="post" name="search" action="book.do">				
					搜索：
					<input class="input-text" type="text" name="keyword" />
					<input class="input-btn" type="submit" name="submit" value="" />
				</form>
			</div>
		</div>
		<div id="login">
			<h2>
				用户登陆
			</h2>
			<form method="post" action="login">
				<input type="hidden" name="flag" value="login" />
				<dl>
					<dt>
						用户名：
					</dt>
					<dd>
						<input class="input-text" type="text" name="userName" />
						<span>当前用户不存在！</span>
					</dd>
					<dt>
						密 码：
					</dt>
					<dd>
						<input class="input-text" type="password" name="password" />
						<span>密码过于简单！</span>
					</dd>
					<dt></dt>
					<dd class="button">
						<input class="input-btn" type="submit" name="submit" value=" " />
						<input class="input-reg" type="button" name="register" value=" "
							onclick="location.href='regist.jsp'" />
					</dd>
				</dl>
			</form>
		</div>
		<div id="footer" class="wrap">
			网上书城 &copy; 版权所有
		</div>
	</body>
</html>
