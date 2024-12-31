<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="test.UserBean"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
   
</head>
<body>

    <div class="container mt-5">
        <h2 class="text-center">User Profile</h2>
        
        <div class="card mt-4">
            <div class="card-body">
                <%
                    String fName = (String) request.getAttribute("name");
                    UserBean ub = (UserBean) session.getAttribute("ubean");

                    // Display the user's basic details
                    out.println("<p><strong>Page belongs to: </strong>" + fName + "</p>");
                    out.println("<p><strong>Name:</strong> " + ub.getfName() + " " + ub.getlName() + "</p>");
                    out.println("<p><strong>Address:</strong> " + ub.getAddr() + "</p>");
                    out.println("<p><strong>Mail ID:</strong> " + ub.getmId() + "</p>");
                    out.println("<p><strong>Phone Number:</strong> " + ub.getPhNo() + "</p>");
                %>
                
                <!-- Edit Profile Button -->
                <div class="d-flex justify-content-between mt-3">
                    <a href="editc" class="btn btn-warning">Edit Profile</a>
                    <a href="logoutc" class="btn btn-danger">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

</body>
</html>
