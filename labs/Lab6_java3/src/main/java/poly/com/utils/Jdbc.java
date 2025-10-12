package poly.com.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Jdbc {
    private static final String URL = "jdbc:sqlserver://localhost:1433;databaseName=Lab6;encrypt=false";
    private static final String USER = "sa";
    private static final String PASS = "phong123";

    static {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("Không tải được driver JDBC: " + e.getMessage(), e);
        }
    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASS);
    }
}
