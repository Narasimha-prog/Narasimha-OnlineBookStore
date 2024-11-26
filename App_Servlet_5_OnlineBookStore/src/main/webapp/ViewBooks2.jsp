<%@ page language="java" contentType="text/html; charset=UTF-8 "
    pageEncoding="UTF-8"
    import="test.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="File.css" />
</head>
<body>
<%
UserBean ub = (UserBean)session.getAttribute("ubean");
ArrayList<BookBean> al = (ArrayList<BookBean>)session.getAttribute("alist");
out.println("Page belongs to "+ub.getfName()+"<br>");
if(al.size()==0){
	out.println("Books not available...<br>");
}else{
	Iterator<BookBean> it = al.iterator();
	while(it.hasNext()){
		BookBean bb = (BookBean)it.next();
		out.println(bb.getCode()+"&nbsp&nbsp"+bb.getName()+"&nbsp&nbsp"+
		   bb.getAuthor()+"&nbsp&nbsp"+bb.getPrice()+"&nbsp&nbsp"+
				bb.getQty()+"&nbsp&nbsp"+
		   "<a href='buy?bcode="+bb.getCode()+"'>buy</a>"+"<br>");
	}
}
%>
<a href="logout">Logout</a>
</body>
</html>
