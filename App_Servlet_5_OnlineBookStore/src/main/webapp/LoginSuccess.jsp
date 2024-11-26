<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="test.UserBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="" href="" />
</head>
<body>
<%
UserBean ub = (UserBean)session.getAttribute("ubean");
out.println("Welcome User : "+ub.getfName()+"<br>");
%>
<a href="view">ViewProfile</a>
<a href="viewss">ViewBOOKS</a>
<a href="logoutc">Logout</a>
</body>
</html>