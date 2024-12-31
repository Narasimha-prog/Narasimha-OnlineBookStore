<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8" import="test.AdminBean"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Book Store</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        /* Flexbox layout to push footer to the bottom */
        html, body {
            height: 100%;
        }
        .content {
            flex: 1;
        }
    </style>
</head>
<body class="d-flex flex-column">

    <!-- Page Content -->
    <div class="px-4 pt-5 my-5 text-center  content">
        <h1 class="display-4 fw-bold text-body-emphasis">Online Book Store</h1>
        <div class="col-lg-6 mx-auto">
            <p class="lead mb-6">
                <% 
                    AdminBean ab = (AdminBean) session.getAttribute("abean");
                    if (ab != null) {
                        out.println("Welcome Admin: " + ab.getfName() + "<br>");
                        String msg = (String)request.getAttribute("msg");
                        out.println(msg);
                    } else {
                        out.println("No admin logged in.");
                    }
                %>
            </p>
            <div class="row g-2 justify-content-center mb-5">
                <div class="col-lg-4 col-sm-12">
                    <a class="btn btn-primary btn-lg w-100 px-1 text-white text-decoration-none" href="book.html" role="button">Add Books</a>
                </div>
                <div class="col-lg-4 col-sm-12">
                    <a class="btn btn-primary btn-lg w-100 px-1 text-white text-decoration-none" href="views" role="button">View Books</a>
                </div>
                <div class="col-lg-4 col-sm-12">
                    <a class="btn btn-primary btn-lg w-100 px-1 text-white text-decoration-none" href="logout" role="button">Log Out</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer Section -->
    <div class="container">
        <footer class="py-3 my-4 bg-light mt-auto">
            <ul class="nav justify-content-center border-bottom pb-3 mb-3">
                <li class="nav-item"><a href="home.html" class="nav-link px-2 text-dark">Home</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-dark">Features</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-dark">Pricing</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-dark">FAQs</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-dark">About</a></li>
            </ul>
            <p class="text-center text-muted mb-0">© 2024 Company, Inc</p>
        </footer>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
