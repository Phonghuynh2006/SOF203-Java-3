package com.poly.dao;

import com.poly.model.User;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
    public List<User> findAll() {
        List<User> list = new ArrayList<>();
        String sql = "SELECT * FROM Users";

        try (Connection con = DatabaseHelper.openConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                User u = new User(
                    rs.getString("Id"),
                    rs.getString("Password"),
                    rs.getString("Fullname"),
                    rs.getDate("Birthday"),
                    rs.getBoolean("Gender"),
                    rs.getString("Mobile"),
                    rs.getString("Email"),
                    rs.getBoolean("Role")
                );
                list.add(u);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public User findById(String id) {
        String sql = "SELECT * FROM Users WHERE Id = ?";
        try (Connection con = DatabaseHelper.openConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return new User(
                    rs.getString("Id"),
                    rs.getString("Password"),
                    rs.getString("Fullname"),
                    rs.getDate("Birthday"),
                    rs.getBoolean("Gender"),
                    rs.getString("Mobile"),
                    rs.getString("Email"),
                    rs.getBoolean("Role")
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
