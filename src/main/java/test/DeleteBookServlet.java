package test;

import java.io.*;
import java.util.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@SuppressWarnings("serial")
@WebServlet("/delete")
public class DeleteBookServlet extends HttpServlet {

    @SuppressWarnings("unchecked")
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        HttpSession hs = req.getSession(false);  // Get current session
        if (hs == null) {
            // If session is expired or doesn't exist, redirect to a message page
            req.setAttribute("msg", "Session Expired. Please log in again.");
            req.getRequestDispatcher("Msg.jsp").forward(req, res);
        } else {
            // Get the book code to delete
            String bC = req.getParameter("bcode");
            if (bC == null || bC.isEmpty()) {
                // If no book code is provided, show an error message
                req.setAttribute("msg", "No book code provided.");
                req.getRequestDispatcher("Msg.jsp").forward(req, res);
                return;
            }

            // Get the list of books from session
            ArrayList<BookBean> al = (ArrayList<BookBean>) hs.getAttribute("alist");

            if (al == null || al.isEmpty()) {
                // If the list is empty or null, show an error message
                req.setAttribute("msg", "No books found to delete.");
                req.getRequestDispatcher("Msg.jsp").forward(req, res);
                return;
            }

            boolean bookDeleted = false;

            // Iterate through the list to find and delete the book
            Iterator<BookBean> it = al.iterator();
            while (it.hasNext()) {
                BookBean bb = it.next();
                if (bC.equals(bb.getCode())) {
                    // Book found, delete it
                    int k = new DeleteBookDAO().update(bb);  // Call DAO to delete the book from the database
                    if (k > 0) {
                        // If book deleted successfully from DB, remove it from the list
                        it.remove();
                        bookDeleted = true;
                        break;
                    }
                }
            }

            if (bookDeleted) {
                // If book was deleted successfully, show success message
                req.setAttribute("msg", "Book deleted successfully.");
               
            } else {
                // If book not found or not deleted, show error message
                req.setAttribute("msg", "Book not found or deletion failed.");
            }

            // Forward to UpdateBook.jsp to display the message
            req.getRequestDispatcher("UpdateBook.jsp").forward(req, res);
        }
    }
}
