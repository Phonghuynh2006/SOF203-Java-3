package poly.com.dao;

import java.sql.*;
import java.util.*;
import poly.com.entity.Department;
import poly.com.util.Jdbc;

public class DepartmentDAOImpl implements DepartmentDAO {
    @Override
    public List<Department> findAll() {
        String sql = "SELECT * FROM Departments";
        try {
            List<Department> list = new ArrayList<>();
            ResultSet rs = Jdbc.executeQuery(sql);
            while (rs.next()) {
                Department d = new Department();
                d.setId(rs.getString("Id"));
                d.setName(rs.getString("Name"));
                d.setDescription(rs.getString("Description"));
                list.add(d);
            }
            return list;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public Department findById(String id) {
        String sql = "SELECT * FROM Departments WHERE Id=?";
        try {
            ResultSet rs = Jdbc.executeQuery(sql, id);
            if (rs.next()) {
                Department d = new Department();
                d.setId(rs.getString("Id"));
                d.setName(rs.getString("Name"));
                d.setDescription(rs.getString("Description"));
                return d;
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    @Override
    public void create(Department d) {
        String sql = "INSERT INTO Departments(Id, Name, Description) VALUES(?, ?, ?)";
        try {
            Jdbc.executeUpdate(sql, d.getId(), d.getName(), d.getDescription());
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void update(Department d) {
        String sql = "UPDATE Departments SET Name=?, Description=? WHERE Id=?";
        try {
            Jdbc.executeUpdate(sql, d.getName(), d.getDescription(), d.getId());
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void deleteById(String id) {
        String sql = "DELETE FROM Departments WHERE Id=?";
        try {
            Jdbc.executeUpdate(sql, id);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
