<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<<<<<<< HEAD
<meta http-equiv="Content-Security-Policy" content="default-src 'self'; font-src 'self' https://fonts.googleapis.com; script-src 'self' 'unsafe-eval';">
=======
>>>>>>> master
<title>Online Book Store</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<!-- <form action="admin" method="post"> -->
<!-- UserName:<input type="text" name="uname" ><br> -->
<!-- PassWord:<input type="password" name="pword"><br> -->
<!-- <input class="king" type="submit" value="Login"> -->
<!-- </form> -->
<div class="container col-xl-10 col-xxl-8 px-4 py-5 ">
<h1 class="h3 mb-2 text-center">
	<%
String msg = (String)request.getAttribute("msg");
	
	if(msg==null)
	{
		
	}
	else{
		out.println(msg);
	}

%>
</h1>
 <h1 class="h3 mb-2 text-center">Admin,Please sign in</h1>
    <div class="row align-items-center g-lg-5 py-5">
   
      <div class="col-md-10 mx-auto col-lg-5">
        <form class="p-4 p-md-5 border rounded-3 bg-body-tertiary" action="admin" method="post"">
          <div class="form-floating mb-3">
            <input type="text" class="form-control" id="floatingInput"  name="uname" required="required">
            <label for="floatingInput">User Name</label>
          </div>
          <div class="form-floating mb-3">
            <input type="password" class="form-control" id="floatingPassword"  name="pword" required="required">
            <label for="floatingPassword">Password</label>
          </div>
          <button class="w-100 btn btn-lg btn-primary mb-2" type="submit" >Sign up</button>
          <br>      
        </form>
      </div>
    </div>
  </div>
  <div class="container">
  <footer class="py-3 my-4 bg-light ">
    <ul class="nav justify-content-center border-bottom pb-3 mb-3">
      <li class="nav-item"><a href="home.html" class="nav-link px-2 text-body-secondary">Home</a></li>
      <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Features</a></li>
      <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Pricing</a></li>
      <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">FAQs</a></li>
      <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">About</a></li>
    </ul>
    <p class="text-center text-body-secondary">© 2024 Company, Inc</p>
  </footer>
</div>
</body>
</html>