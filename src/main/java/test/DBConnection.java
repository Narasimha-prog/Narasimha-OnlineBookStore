package test;

import java.sql.Connection;
import java.sql.SQLException;

import org.apache.commons.dbcp2.BasicDataSource;

public class DBConnection {
    private static BasicDataSource dataSource;

    static {
        try {
            dataSource = new BasicDataSource();
            dataSource.setUrl(DBInfo.dbUrl);
            dataSource.setUsername(DBInfo.uName);
            dataSource.setPassword(DBInfo.pWord);
            dataSource.setDriverClassName("oracle.jdbc.OracleDriver");
            dataSource.setMinIdle(5);
            dataSource.setMaxIdle(10);
            dataSource.setMaxOpenPreparedStatements(100);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private DBConnection() {}

    public static Connection getCon() throws SQLException {
        return dataSource.getConnection();
    }
}
