package poly.com.controller;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import org.apache.commons.beanutils.BeanUtils;
import poly.com.dao.*;
import poly.com.entity.Department;

@WebServlet({
    "/department/index",
    "/department/edit/*",
    "/department/create",
    "/department/update",
    "/department/delete",
    "/department/reset"
})
public class DepartmentServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        Department form = new Department();
        try {
            BeanUtils.populate(form, req.getParameterMap());
        } catch (IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
        }

        DepartmentDAO dao = new DepartmentDAOImpl();
        String path = req.getServletPath();

        if (path.contains("edit")) {
            String id = req.getPathInfo().substring(1);
            form = dao.findById(id);
        } else if (path.contains("create")) {
            dao.create(form);
            form = new Department();
        } else if (path.contains("update")) {
            dao.update(form);
        } else if (path.contains("delete")) {
            dao.deleteById(form.getId());
            form = new Department();
        } else {
            form = new Department();
        }

        req.setAttribute("item", form);
        req.setAttribute("list", dao.findAll());
        req.getRequestDispatcher("/department/index.jsp").forward(req, resp);
    }
}
