package test;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/view")
public class ViewProfileServlet extends HttpServlet{
  protected void doGet(HttpServletRequest req,HttpServletResponse res)throws
  ServletException,IOException{
	  HttpSession hs = req.getSession(false);//Accessing existing Session
	  if(hs==null) {
		  req.setAttribute("msg","Session Expiled....<br>");
		  req.getRequestDispatcher("Msg.jsp").forward(req, res);
	  }else {
		  UserBean ub = (UserBean)hs.getAttribute("ubean");
		  String fName = ub.getfName();
		  req.setAttribute("name", fName);
		  req.getRequestDispatcher("ViewProfile.jsp").forward(req, res);
	  }
  }
}
