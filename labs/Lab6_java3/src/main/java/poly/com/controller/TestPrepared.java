package poly.com.controller;

import poly.com.utils.Jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class TestPrepared {
    public static void main(String[] args) {
        String insertSql = "INSERT INTO Lop(MaLop, TenLop, GhiChu) VALUES (?, ?, ?)";
        String updateSql = "UPDATE Lop SET TenLop = ?, GhiChu = ? WHERE MaLop = ?";
        String selectSql = "SELECT * FROM Lop WHERE MaLop = ?";
        String deleteSql = "DELETE FROM Lop WHERE MaLop = ?";

        String ma = "L99";
        try (Connection conn = Jdbc.getConnection()) {
            // 1) Insert
            try (PreparedStatement ps = conn.prepareStatement(insertSql)) {
                ps.setString(1, ma);
                ps.setString(2, "TEST CLASS");
                ps.setString(3, "Ghi chu test");
                int r = ps.executeUpdate();
                System.out.println("Inserted rows = " + r);
            }

            // 2) Select to verify insert
            try (PreparedStatement ps = conn.prepareStatement(selectSql)) {
                ps.setString(1, ma);
                try (ResultSet rs = ps.executeQuery()) {
                    System.out.println("After insert:");
                    while (rs.next()) {
                        System.out.println(rs.getString("MaLop") + " | " + rs.getString("TenLop") + " | " + rs.getString("GhiChu"));
                    }
                }
            }

            // 3) Update
            try (PreparedStatement ps = conn.prepareStatement(updateSql)) {
                ps.setString(1, "TEST CLASS UPDATED");
                ps.setString(2, "Ghi chu update");
                ps.setString(3, ma);
                int r = ps.executeUpdate();
                System.out.println("Updated rows = " + r);
            }

            // 4) Select to verify update
            try (PreparedStatement ps = conn.prepareStatement(selectSql)) {
                ps.setString(1, ma);
                try (ResultSet rs = ps.executeQuery()) {
                    System.out.println("After update:");
                    while (rs.next()) {
                        System.out.println(rs.getString("MaLop") + " | " + rs.getString("TenLop") + " | " + rs.getString("GhiChu"));
                    }
                }
            }

            // 5) Delete
            try (PreparedStatement ps = conn.prepareStatement(deleteSql)) {
                ps.setString(1, ma);
                int r = ps.executeUpdate();
                System.out.println("Deleted rows = " + r);
            }

            // 6) Final check (should be none)
            try (PreparedStatement ps = conn.prepareStatement(selectSql)) {
                ps.setString(1, ma);
                try (ResultSet rs = ps.executeQuery()) {
                    System.out.println("After delete (no rows expected):");
                    if (!rs.next()) System.out.println("No rows found for " + ma);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
