<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="test.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
<<<<<<< HEAD
    <meta http-equiv="Content-Security-Policy" content="default-src 'self'; font-src 'self' https://fonts.googleapis.com; script-src 'self' 'unsafe-eval';">
=======
>>>>>>> master
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <div class="container mt-5">
    
        <h2 class="text-center">Welcome User: 
    <%
        UserBean ub = (UserBean) session.getAttribute("ubean");
        if (ub != null) {
            out.println(ub.getfName());
        } else {
            out.println("Guest");
        }
    %>
</h2>


        <!-- Navigation Links -->
        <div class="d-flex justify-content-around mt-4">
            <a href="view" class="btn btn-primary">View Profile</a>
            <a href="viewss" class="btn btn-secondary">View Books</a>
            <a href="logoutc" class="btn btn-danger">Logout</a>
        </div>
    </div>

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
