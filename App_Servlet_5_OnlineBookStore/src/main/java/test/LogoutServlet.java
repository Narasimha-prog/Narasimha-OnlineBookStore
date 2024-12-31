package test;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/logoutc")
public class LogoutServlet extends HttpServlet{
	@Override
  protected void doGet(HttpServletRequest req,HttpServletResponse res)throws
  ServletException,IOException{
		HttpSession hs = req.getSession(false);//Accessing existing Session
	  if(hs==null) {
		  req.setAttribute("msg", "Session Expired...");
	  }else {
		  
		 hs.removeAttribute("ubean");
		 req.setAttribute("msg","User Logged out Successfully....");
		 req.getRequestDispatcher("Msg.jsp").forward(req, res);
	  }
	  
  }
}
