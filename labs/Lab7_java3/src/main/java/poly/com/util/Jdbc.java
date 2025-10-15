package poly.com.util;

import java.sql.*;

public class Jdbc {
    static String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    static String dburl = "jdbc:sqlserver://localhost:1433;databaseName=HRM;encrypt=false";
    static String username = "sa";
    static String password = "phong123";

    static {
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(dburl, username, password);
    }

    public static int executeUpdate(String sql, Object... values) throws SQLException {
        PreparedStatement stmt = Jdbc.createPreStmt(sql, values);
        return stmt.executeUpdate();
    }

    public static ResultSet executeQuery(String sql, Object... values) throws SQLException {
        PreparedStatement stmt = Jdbc.createPreStmt(sql, values);
        return stmt.executeQuery();
    }

    private static PreparedStatement createPreStmt(String sql, Object... values) throws SQLException {
        Connection connection = Jdbc.getConnection();
        PreparedStatement stmt;
        if (sql.trim().startsWith("{")) {
            stmt = connection.prepareCall(sql);
        } else {
            stmt = connection.prepareStatement(sql);
        }
        for (int i = 0; i < values.length; i++) {
            stmt.setObject(i + 1, values[i]);
        }
        return stmt;
    }
}
