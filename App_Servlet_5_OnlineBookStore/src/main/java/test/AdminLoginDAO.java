package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminLoginDAO {

    public AdminBean login(String uN, String pW) throws SQLException {
        AdminBean adminBean = null;
        String query = "SELECT uname, pword, fname, lname, addr, mid, phno FROM Admin62 WHERE uname = ? AND pword = ?";

        try (Connection con = DBConnection.getCon();
             PreparedStatement ps = con.prepareStatement(query)) {

            // Set query parameters
            ps.setString(1, uN);
            ps.setString(2, pW);

            try (ResultSet rs = ps.executeQuery()) {
                // Process the result set
                if (rs.next()) {
                    adminBean = new AdminBean();
                    adminBean.setuName(rs.getString("uname"));
                    adminBean.setpWord(rs.getString("pword"));
                    adminBean.setfName(rs.getString("fname"));
                    adminBean.setlName(rs.getString("lname"));
                    adminBean.setAddr(rs.getString("addr"));
                    adminBean.setmId(rs.getString("mid"));
                    adminBean.setPhNo(rs.getLong("phno"));
                }
            }
        } catch (SQLException e) {
            System.err.println("Error during login: " + e.getMessage());
            throw e; // Propagate exception to handle it at a higher level
        }

        return adminBean;
    }
}
