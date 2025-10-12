package poly.com.controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import poly.com.utils.Jdbc;

public class TestStatement {
    public static void main(String[] args) {
        try (Connection conn = Jdbc.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM Lop")) {

            System.out.println("=== DANH SÁCH LỚP ===");
            while (rs.next()) {
                String ma = rs.getString("MaLop");
                String ten = rs.getString("TenLop");
                String ghiChu = rs.getString("GhiChu");
                System.out.println(ma + " | " + ten + " | " + ghiChu);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
