<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="test.AdminBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="File.css" />
</head>
<body>
<%
AdminBean ab = (AdminBean)session.getAttribute("abean");
out.println("Welcome Admin : "+ab.getfName()+"<br>");
%>
<a href="book.html">AddBook</a>
<a href="views">ViewBooks</a>
<a href="logout">Logout</a>
</body>
</html>