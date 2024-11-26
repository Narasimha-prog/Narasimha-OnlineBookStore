<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="test.UserBean"%>
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
UserBean ub = (UserBean)session.getAttribute("ubean");
out.println("Page belongs to : "+fName+"<br>");
out.println(ub.getfName()+"&nbsp&nbsp"+ub.getlName()+"&nbsp&nbsp"+
            ub.getAddr()+"&nbsp&nbsp"+ub.getmId()+"&nbsp&nbsp"+
		         ub.getPhNo()+"<a href='editc'>Edit</a><br>");
%>
<a href="logoutc">Logout</a>
</body>
</html>