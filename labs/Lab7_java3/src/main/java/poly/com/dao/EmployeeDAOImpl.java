package poly.com.dao;

import java.sql.*;
import java.util.*;
import poly.com.entity.Employee;
import poly.com.util.Jdbc;

public class EmployeeDAOImpl implements EmployeeDAO {
    @Override
    public List<Employee> findAll() {
        String sql = "SELECT * FROM Employees";
        try {
            List<Employee> list = new ArrayList<>();
            ResultSet rs = Jdbc.executeQuery(sql);
            while (rs.next()) {
                Employee e = new Employee();
                e.setId(rs.getString("Id"));
                e.setName(rs.getString("Name"));
                e.setGender(rs.getBoolean("Gender"));
                e.setSalary(rs.getDouble("Salary"));
                e.setPhoto(rs.getString("Photo"));
                e.setDepartmentId(rs.getString("DepartmentId"));
                list.add(e);
            }
            return list;
        } catch (Exception ex) {
            throw new RuntimeException(ex);
        }
    }
    @Override
    public Employee findById(String id) {
        String sql = "SELECT * FROM Employees WHERE Id=?";
        try {
            ResultSet rs = Jdbc.executeQuery(sql, id);
            if (rs.next()) {
                Employee e = new Employee();
                e.setId(rs.getString("Id"));
                e.setName(rs.getString("Name"));
                e.setGender(rs.getBoolean("Gender"));
                e.setSalary(rs.getDouble("Salary"));
                e.setPhoto(rs.getString("Photo"));
                e.setDepartmentId(rs.getString("DepartmentId"));
                return e;
            }
        } catch (Exception ex) {
            throw new RuntimeException(ex);
        }
        return null;
    }
    @Override
    public void create(Employee e) {
        String sql = "INSERT INTO Employees(Id, Name, Gender, Salary, Photo, DepartmentId) VALUES(?, ?, ?, ?, ?, ?)";
        try {
            Jdbc.executeUpdate(sql, e.getId(), e.getName(), e.isGender(), e.getSalary(), e.getPhoto(), e.getDepartmentId());
        } catch (Exception ex) {
            throw new RuntimeException(ex);
        }
    }
    @Override
    public void update(Employee e) {
        String sql = "UPDATE Employees SET Name=?, Gender=?, Salary=?, Photo=?, DepartmentId=? WHERE Id=?";
        try {
            Jdbc.executeUpdate(sql, e.getName(), e.isGender(), e.getSalary(), e.getPhoto(), e.getDepartmentId(), e.getId());
        } catch (Exception ex) {
            throw new RuntimeException(ex);
        }
    }
    @Override
    public void deleteById(String id) {
        String sql = "DELETE FROM Employees WHERE Id=?";
        try {
            Jdbc.executeUpdate(sql, id);
        } catch (Exception ex) {
            throw new RuntimeException(ex);
        }
    }
}
