<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="File.css" />
</head>
<body>
	<%
String fName = (String)request.getAttribute("name");
String msg = (String)request.getAttribute("msg");
out.println("Page belongs to : "+fName+"<br>");
out.println(msg);
%>
	<a href="view">ViewProfile</a>
	<a href="logoutc">Logout</a>

</body>
</html>