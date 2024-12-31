package test;

import java.io.*;
import java.util.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@SuppressWarnings("serial")
@WebServlet("/update")
public class UpdateBookServlet extends HttpServlet {
    @SuppressWarnings("unchecked")
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        HttpSession hs = req.getSession(false);

        // If session does not exist or has expired
        if (hs == null) {
            req.setAttribute("msg", "Session Expired..<br>");
            req.getRequestDispatcher("Msg.jsp").forward(req, res);
            return;
        }

        try {
            // Retrieve the parameters from the request
            String bC = req.getParameter("bcode");
            float bP = Float.parseFloat(req.getParameter("bprice"));
            int bQ = Integer.parseInt(req.getParameter("bqty"));

            // Retrieve the list of books from the session
            ArrayList<BookBean> al = (ArrayList<BookBean>) hs.getAttribute("alist");
            boolean bookUpdated = false;

            // Loop through the book list to find the book by its code
            for (BookBean bb : al) {
                if (bC.equals(bb.getCode())) {
                    bb.setPrice(bP);
                    bb.setQty(bQ);

                    // Call the DAO method to update the book
                    int result = new UpdateBookDAO().update(bb);

                    // Check if the update was successful
                    if (result > 0) {
                        req.setAttribute("msg", "Book Updated Successfully...<br>");
                        bookUpdated = true;
                    } else {
                        req.setAttribute("msg", "Error Updating Book. Please try again.");
                    }
                    break;
                }
            }

            // If the book was not found or updated
            if (!bookUpdated) {
                req.setAttribute("msg", "Book with the given code not found.");
            }

            // Forward the response to the UpdateBook.jsp page
            req.getRequestDispatcher("UpdateBook.jsp").forward(req, res);

        } catch (NumberFormatException e) {
            // Handle invalid input (non-numeric price or quantity)
            req.setAttribute("msg", "Invalid input. Please provide valid numeric values for price and quantity.");
            req.getRequestDispatcher("UpdateBook.jsp").forward(req, res);
        } catch (Exception e) {
            // Handle any other unexpected errors
            e.printStackTrace();
            req.setAttribute("msg", "An unexpected error occurred. Please try again later.");
            req.getRequestDispatcher("UpdateBook.jsp").forward(req, res);
        }
    }
}
