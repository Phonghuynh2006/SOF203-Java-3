package poly.com.controller;

import poly.com.utils.Jdbc;
import java.sql.Connection;

public class TestConnection {
    public static void main(String[] args) {
        try (Connection conn = Jdbc.getConnection()) {
            if (conn != null && !conn.isClosed()) {
                System.out.println("KẾT NỐI THÀNH CÔNG -> " + conn.getMetaData().getURL());
            } else {
                System.out.println("KẾT NỐI THẤT BẠI");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
