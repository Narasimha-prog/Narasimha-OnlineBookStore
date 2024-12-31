<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<<<<<<< HEAD
    <meta http-equiv="Content-Security-Policy" content="default-src 'self'; font-src 'self' https://fonts.googleapis.com; script-src 'self' 'unsafe-eval';">
=======
>>>>>>> master
    <title>Welcome Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <div class="container mt-5">
        <h2>Welcome</h2>
        <div class="card mt-3">
            <div class="card-body">
                <%
                    String fName = (String) request.getAttribute("name");
                    String msg = (String) request.getAttribute("msg");
                    
                    // Display user's name and message
                    out.println("<p><strong>Page belongs to: </strong>" + (fName != null ? fName : "Guest") + "</p>");
                    out.println("<p>" + (msg != null ? msg : "No message available") + "</p>");
                %>
            </div>
        </div>

        <!-- Navigation Links with Bootstrap buttons -->
        <div class="mt-4">
            <a href="view" class="btn btn-primary btn-lg">View Profile</a>
            <a href="logoutc" class="btn btn-danger btn-lg ml-3">Logout</a>
        </div>
    </div>

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

</body>
</html>
