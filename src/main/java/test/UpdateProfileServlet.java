package test;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/updatec")
public class UpdateProfileServlet extends HttpServlet{
   protected void doPost(HttpServletRequest req,HttpServletResponse res)throws
   ServletException,IOException{
	   HttpSession hs = req.getSession(false);//Accessing existing Session
	   if(hs==null) {
		   req.setAttribute("msg", "Session Expired...<br>");
		   req.getRequestDispatcher("Msg.jsp").forward(req, res);
	   }else {
		   UserBean ub = (UserBean)hs.getAttribute("ubean");
		   String fName = ub.getfName();
		   req.setAttribute("name", fName);
		   ub.setAddr(req.getParameter("addr"));
		   ub.setmId(req.getParameter("mid"));
		   ub.setPhNo(Long.parseLong(req.getParameter("phno")));
		   int k = new UpdateProfileDAO().update(ub);
		   if(k>0) {
			   req.setAttribute("msg", "Profile Updated Successfully...<br>");
			   req.getRequestDispatcher("UpdateProfile.jsp").forward(req, res);
		   }
	   }
   }
}
