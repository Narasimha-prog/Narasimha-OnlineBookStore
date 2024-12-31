<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8" import="test.*,java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book List</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
   
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Welcome, 
    <% 
        UserBean ub = (UserBean) session.getAttribute("ubean");
        if (ub != null) {
            out.print(ub.getfName());
        } else {
            out.print("Guest");
        }
    %>
</h2>


        <% 
            ArrayList<BookBean> al = (ArrayList<BookBean>)session.getAttribute("alist");
            if(al == null || al.size() == 0){
                out.println("<div class='alert alert-warning'>Books not available...</div>");
            } else {
        %>
        
        <div class="row">
            <% 
                Iterator<BookBean> it = al.iterator();
                while(it.hasNext()){
                    BookBean bb = it.next();
            %>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title"><%= bb.getName() %></h5>
                        <p class="card-text"><strong>Author:</strong> <%= bb.getAuthor() %></p>
                        <p class="card-text"><strong>Price:</strong>₹<%= bb.getPrice() %></p>
                        <p class="card-text"><strong>Quantity:</strong> <%= bb.getQty() %></p>
                        <a href="buy?bcode=<%= bb.getCode() %>" class="btn btn-primary">Buy</a>
                    </div>
                </div>
            </div>
            <% } %>
        </div>

        <% } %>

        <!-- Logout Button -->
        <div class="text-center mt-4">
            <a href="logout" class="btn btn-danger">Logout</a>
        </div>
    </div>

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
