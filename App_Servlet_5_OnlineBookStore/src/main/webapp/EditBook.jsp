<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="test.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Book</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS (optional) -->
    <link rel="stylesheet" href="File.css" />
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Update Book Details</h2>
        <div class="row justify-content-center">
            <div class="col-md-8">
                <%
                    AdminBean ab = (AdminBean) session.getAttribute("abean");
                    BookBean bb = (BookBean) request.getAttribute("bbean");

                    // Check if the admin is logged in
                    if (ab == null) {
                        response.sendRedirect("AdminLogin.html"); // Redirect to login page
                        return;
                    }

                    out.println("<p>Page belongs to " + ab.getfName() + "</p>");

                    // Check if book details are available
                    if (bb == null) {
                        out.println("<p>Book details not available.</p>");
                        return;
                    }
                %>
                <!-- Book Update Form -->
                <form action="update" method="post">
                    <div class="mb-3">
                        <input type="text" name="bcode" readonly="readonly" value="<%= bb.getCode() %>">
                    </div>
                    <div class="mb-3">
                        <label for="bprice" class="form-label">Book Price</label>
                        <input type="text" class="form-control" id="bprice" name="bprice" value="<%= bb.getPrice() %>">
                    </div>
                    <div class="mb-3">
                        <label for="bqty" class="form-label">Book Quantity</label>
                        <input type="text" class="form-control" id="bqty" name="bqty" value="<%= bb.getQty() %>">
                    </div>
                    <div class="d-grid">
                        <button type="submit" class="btn btn-primary">Update Book</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
