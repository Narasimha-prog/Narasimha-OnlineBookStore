package test;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/admin")
public class AdminLoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        try {
            // Retrieve login parameters
            String username = req.getParameter("uname");
            String password = req.getParameter("pword");

            // Authenticate using DAO
            AdminBean admin = new AdminLoginDAO().login(username, password);

            if (admin == null) {
                // Invalid login
                req.setAttribute("msg", "Invalid credentials. Please try again.");
                req.getRequestDispatcher("AdminLogin1.jsp").forward(req, res);
            } else {
                // Successful login
                HttpSession session = req.getSession(); // Create a new session
                session.setAttribute("abean", admin);
                //req.getRequestDispatcher("AdminLogin.jsp").forward(req, res);
                res.sendRedirect("AdminLogin.jsp");
            }
        } catch (Exception e) {
            // Log the error (for debugging purposes)
            e.printStackTrace();

            // Display user-friendly error message
            req.setAttribute("msg", "An unexpected error occurred. Please try again later.");
            req.getRequestDispatcher("AdminLogin1.jsp").forward(req, res);
        }
    }
}
