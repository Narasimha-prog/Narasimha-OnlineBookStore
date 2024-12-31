<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="test.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buy Books</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS (optional) -->
    <link rel="stylesheet" href="File.css" />
</head>
<body>

    <div class="container mt-5">
        <h2 class="text-center">Buy Books</h2>
        <div class="row justify-content-center">
            <div class="col-md-8">
                <%
                    UserBean ub = (UserBean)session.getAttribute("ubean");
                    BookBean bb = (BookBean)request.getAttribute("bbean");
                    out.println("<p>Page belongs to " + ub.getfName() + "</p>");
                %>
                
                <form action="buy1" method="post">
                    <div class="mb-3">
                        <input type="hidden" name="bcode" value="<%= bb.getCode() %>">
                        <label for="bookPrice" class="form-label">Book Price:</label>
                        <p id="bookPrice"><%= bb.getPrice() %></p>
                    </div>

                    <div class="mb-3">
                        <label for="bookQty" class="form-label">Select required quantity:</label>
                        <input type="number" class="form-control" id="bookQty" name="bqty" value="<%= bb.getQty() %>" min="1">
                    </div>

                    <div class="text-center">
                        <button type="submit" class="btn btn-primary">Buy Books</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
