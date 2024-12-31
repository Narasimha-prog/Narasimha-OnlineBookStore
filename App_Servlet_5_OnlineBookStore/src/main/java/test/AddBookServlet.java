package test;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;

@WebServlet("/add")
public class AddBookServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        HttpSession hs = req.getSession(false); // Accessing existing session

        if (hs == null) {
            req.setAttribute("msg", "Session Expired. Please log in again.<br>");
            req.getRequestDispatcher("Msg.jsp").forward(req, res);
            return;
        }

        try {
            // Retrieve and validate input parameters
            String code = req.getParameter("bcode");
            String name = req.getParameter("bname");
            String author = req.getParameter("bauthor");
            String priceStr = req.getParameter("bprice");
            String qtyStr = req.getParameter("bqty");

            if (code == null || name == null || author == null || priceStr == null || qtyStr == null ||
                code.isEmpty() || name.isEmpty() || author.isEmpty() || priceStr.isEmpty() || qtyStr.isEmpty()) {
                req.setAttribute("msg", "All fields are required. Please provide valid book details.<br>");
                req.getRequestDispatcher("AddBook.jsp").forward(req, res);
                return;
            }

            // Parse numeric values
            float price = Float.parseFloat(priceStr);
            int qty = Integer.parseInt(qtyStr);

            // Create and populate BookBean
            BookBean bb = new BookBean();
            bb.setCode(code);
            bb.setName(name);
            bb.setAuthor(author);
            bb.setPrice(price);
            bb.setQty(qty);

            // Insert into database
            int result = new AddBookDAO().insert(bb);
            if (result > 0) {
                req.setAttribute("msg", "Book Details Added Successfully!<br>");
            } else {
                req.setAttribute("msg", "Failed to add book details. Please try again.<br>");
            }
            req.getRequestDispatcher("AddBook.jsp").forward(req, res);

        } catch (NumberFormatException e) {
            req.setAttribute("msg", "Invalid input for price or quantity. Please try again.<br>");
            req.getRequestDispatcher("AddBook.jsp").forward(req, res);
        } catch (Exception e) {
            req.setAttribute("msg", "An unexpected error occurred: " + e.getMessage() + "<br>");
            req.getRequestDispatcher("AddBook.jsp").forward(req, res);
        }
    }
}
