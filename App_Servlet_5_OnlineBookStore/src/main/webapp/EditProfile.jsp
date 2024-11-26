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
%>
	<form action="updatec" method="post">
		Address:<input type="text" name="addr" value=<%=ub.getAddr() %>><br>
		MailId:<input type="text" name="mid" value=<%=ub.getmId() %>><br>
		PhoneNo:<input type="text" name="phno" value=<%=ub.getPhNo() %>><br>
		<input class="king" type="submit" value="UpdateProfile">
	</form>
</body>
</html>