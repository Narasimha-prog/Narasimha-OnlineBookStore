<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="test.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<<<<<<< HEAD
    <meta http-equiv="Content-Security-Policy" content="default-src 'self'; font-src 'self' https://fonts.googleapis.com; script-src 'self' 'unsafe-eval';">
=======
>>>>>>> master
    <title>Admin - Manage Books</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
          crossorigin="anonymous">
</head>
<body>
<div class="container my-5">
    <h1 class="mb-4 text-center">Welcome, Admin</h1>

    <%
    AdminBean ab = (AdminBean) session.getAttribute("abean");
    ArrayList<BookBean> al = (ArrayList<BookBean>) session.getAttribute("alist");

    if (ab == null || al == null) {
    %>
        <div class="alert alert-danger text-center">Session expired or invalid. Please log in again.</div>
        <div class="text-center">
            <a href="logout" class="btn btn-primary">Logout</a>
        </div>
    <%
    } else {
        out.println("<p class='text-center'>Page belongs to <strong>" + ab.getfName() + "</strong></p>");
        if (al.isEmpty()) {
    %>
        <div class="alert alert-warning text-center">Books not available.</div>
    <%
        } else {
    %>
        <div class="table-responsive">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Code</th>
                        <th>Name</th>
                        <th>Author</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
        <%
            for (BookBean bb : al) {
        %>
                    <tr>
                        <td><%= bb.getCode() %></td>
                        <td><%= bb.getName() %></td>
                        <td><%= bb.getAuthor() %></td>
                        <td><%= bb.getPrice() %></td>
                        <td><%= bb.getQty() %></td>
                        <td>
                            <a href="edit?bcode=<%= bb.getCode() %>" class="btn btn-sm btn-warning">Edit</a>
                            <a href="delete?bcode=<%= bb.getCode() %>" class="btn btn-sm btn-danger">Delete</a>
                        </td>
                    </tr>
        <%
            }
        %>
                </tbody>
            </table>
        </div>
    <%
        }
    %>
        <div class="d-flex justify-content-center gap-3">
            <a href="book.html" class="btn btn-success">Add Book</a>
            <a href="logout" class="btn btn-secondary">Logout</a>
        </div>
    <%
    }
    %>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+yu0mAIpEeH5DQUqovC8C9d/kdp1y" 
        crossorigin="anonymous"></script>
</body>
</html>
