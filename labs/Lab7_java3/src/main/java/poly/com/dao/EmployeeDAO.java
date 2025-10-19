package poly.com.dao;

import java.util.List;
import poly.com.entity.Employee;

public interface EmployeeDAO {
    List<Employee> findAll();
    Employee findById(String id);
    void create(Employee emp);
    void update(Employee emp);
    void deleteById(String id);
}
