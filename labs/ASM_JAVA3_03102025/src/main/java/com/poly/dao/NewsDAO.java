package com.poly.dao;

import com.poly.model.News;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class NewsDAO {
    public List<News> findAll() {
        List<News> list = new ArrayList<>();
        String sql = "SELECT * FROM News ORDER BY PostedDate DESC";

        try (Connection con = DatabaseHelper.openConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                News n = new News(
                    rs.getString("Id"),
                    rs.getString("Title"),
                    rs.getString("Content"),
                    rs.getString("Image"),
                    rs.getDate("PostedDate"),
                    rs.getString("Author"),
                    rs.getString("CategoryId"),
                    rs.getInt("ViewCount"),
                    rs.getBoolean("Home")
                );
                list.add(n);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
