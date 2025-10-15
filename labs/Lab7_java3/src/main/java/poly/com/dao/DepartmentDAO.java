package poly.com.dao;

import java.util.List;
import poly.com.entity.Department;

public interface DepartmentDAO {
    List<Department> findAll();
    Department findById(String id);
    void create(Department item);
    void update(Department item);
    void deleteById(String id);
}
