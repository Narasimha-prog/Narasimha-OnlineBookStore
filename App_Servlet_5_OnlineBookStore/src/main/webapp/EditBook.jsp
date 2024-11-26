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
AdminBean ab = (AdminBean)session.getAttribute("abean");
BookBean bb = (BookBean)request.getAttribute("bbean");
out.println("page belongs to "+ab.getfName()+"<br>");
%>
<form action="update" method="post">
<input  type="hidden" name="bcode" value=<%=bb.getCode() %>>
BookPrice:<input type="text" name="bprice" value=<%=bb.getPrice() %>><br>
BookQty:<input type="text" name="bqty" value=<%=bb.getQty() %>><br>
<input class="king" type="submit" value="UpdateBook">
</form>

</body>
</html>