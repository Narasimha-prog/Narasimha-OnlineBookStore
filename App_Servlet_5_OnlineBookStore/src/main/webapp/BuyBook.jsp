<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="test.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="File.css" />
</head>
<body>
<%
UserBean ub = (UserBean)session.getAttribute("ubean");
BookBean bb = (BookBean)request.getAttribute("bbean");
out.println("page belongs to "+ub.getfName()+"<br>");
%>
<form action="buy1" method="post">
<input type="hidden" name="bcode" value=<%=bb.getCode() %>>
<%out.println("BookPrice:"+bb.getPrice()+"<br>"); %>
<%out.println("Select required books"+"<br>"); %>
BookQty:<input type="text" name="bqty" value=<%=bb.getQty() %>><br>
<input class="king" type="submit" value="BuyBooks">
</form>
</body>
</html>