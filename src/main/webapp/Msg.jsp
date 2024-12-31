<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Security-Policy" content="default-src 'self'; font-src 'self' https://fonts.googleapis.com; script-src 'self' 'unsafe-eval';">
<title>Insert title here</title>
</head>
<body>
	<%
String msg = (String)request.getAttribute("msg");
out.println(msg+"<br>");
%>
	<%@include file="home.html"%>
</body>
</html>