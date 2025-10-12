package poly.com.controller;

import poly.com.utils.Jdbc;
import java.sql.*;

public class TestCallable {
    public static void main(String[] args) {
        String id = "LC99";
        try (Connection conn = Jdbc.getConnection()) {

            // 1) Gọi spInsertLop
            try (CallableStatement cs = conn.prepareCall("{CALL spInsertLop(?, ?, ?)}")) {
                cs.setString(1, id);
                cs.setString(2, "Lớp Callable");
                cs.setString(3, "Ghi chú callable");
                int r = cs.executeUpdate();
                System.out.println("Inserted via SP rows = " + r);
            }

            // 2) Gọi spSelectLopById
            try (CallableStatement cs = conn.prepareCall("{CALL spSelectLopById(?)}")) {
                cs.setString(1, id);
                try (ResultSet rs = cs.executeQuery()) {
                    System.out.println("After insert (via SP):");
                    while (rs.next()) {
                        System.out.println(rs.getString("MaLop") + " | " + rs.getString("TenLop") + " | " + rs.getString("GhiChu"));
                    }
                }
            }

            // 3) Gọi spUpdateLop
            try (CallableStatement cs = conn.prepareCall("{CALL spUpdateLop(?, ?, ?)}")) {
                cs.setString(1, id);
                cs.setString(2, "Lớp Callable Updated");
                cs.setString(3, "Ghi chú updated");
                int r = cs.executeUpdate();
                System.out.println("Updated via SP rows = " + r);
            }

            // 4) Gọi spSelectLopById để kiểm tra update
            try (CallableStatement cs = conn.prepareCall("{CALL spSelectLopById(?)}")) {
                cs.setString(1, id);
                try (ResultSet rs = cs.executeQuery()) {
                    System.out.println("After update (via SP):");
                    while (rs.next()) {
                        System.out.println(rs.getString("MaLop") + " | " + rs.getString("TenLop") + " | " + rs.getString("GhiChu"));
                    }
                }
            }

            // 5) Gọi spDeleteLop
            try (CallableStatement cs = conn.prepareCall("{CALL spDeleteLop(?)}")) {
                cs.setString(1, id);
                int r = cs.executeUpdate();
                System.out.println("Deleted via SP rows = " + r);
            }

            // 6) Kiểm tra cuối
            try (CallableStatement cs = conn.prepareCall("{CALL spSelectLopById(?)}")) {
                cs.setString(1, id);
                try (ResultSet rs = cs.executeQuery()) {
                    System.out.println("After delete (no rows expected):");
                    if (!rs.next()) System.out.println("No rows for " + id);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
