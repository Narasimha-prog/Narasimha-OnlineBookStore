package test;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/log")

public class LoginServlet extends HttpServlet
{
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws
	 ServletException,IOException{
		 UserBean ub = new LoginDAO().login(req.getParameter("uname"),
				 req.getParameter("pword"));
		 if(ub==null) {
			req.setAttribute("msg", "Invalid Login process...<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		 }else {
			 HttpSession hs = req.getSession();//Creating new Session Object
			 hs.setAttribute("ubean",ub);
			 req.getRequestDispatcher("LoginSuccess.jsp").forward(req, res);
		 }
	 }
}
