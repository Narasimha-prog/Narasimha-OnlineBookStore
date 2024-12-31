package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AddBookDAO {
    public int insert(BookBean bb) throws SQLException {
        int rowsAffected = 0;
        String insertQuery = "INSERT INTO Book62 (bcode,bname,bauthor,bprice,bqty) VALUES (?, ?, ?, ?, ?)";

        try (Connection con = DBConnection.getCon();
             PreparedStatement ps = con.prepareStatement(insertQuery)) {

            // Set query parameters
            ps.setString(1, bb.getCode());
            ps.setString(2, bb.getName());
            ps.setString(3, bb.getAuthor());
            ps.setFloat(4, bb.getPrice());
            ps.setInt(5, bb.getQty());

            // Execute update and get the number of rows affected
            rowsAffected = ps.executeUpdate();
        } catch (SQLException e) {
            // Log and rethrow exception for handling at a higher level
            System.err.println("Error inserting book: " + e.getMessage());
            throw e;
        }
        return rowsAffected;
    }
}
