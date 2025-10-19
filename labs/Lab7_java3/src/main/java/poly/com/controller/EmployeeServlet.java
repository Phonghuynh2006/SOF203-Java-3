package poly.com.controller;

import jakarta.servlet.*;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import org.apache.commons.beanutils.BeanUtils;
import poly.com.dao.*;
import poly.com.entity.*;

@WebServlet({
    "/employee/index",
    "/employee/edit/*",
    "/employee/create",
    "/employee/update",
    "/employee/delete",
    "/employee/reset"
})
@MultipartConfig
public class EmployeeServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        Employee form = new Employee();
        try {
            BeanUtils.populate(form, req.getParameterMap());
        } catch (IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
        }
        EmployeeDAO empDao = new EmployeeDAOImpl();
        DepartmentDAO depDao = new DepartmentDAOImpl();
        String path = req.getServletPath();
        if (req.getContentType() != null && req.getContentType().startsWith("multipart/")) {
            try {
                Part photoPart = req.getPart("photoFile");
                if (photoPart != null && photoPart.getSize() > 0) {
                    String uploadPath = req.getServletContext().getRealPath("/uploads");
                    File uploadDir = new File(uploadPath);
                    if (!uploadDir.exists()) uploadDir.mkdir();
                    String fileName = photoPart.getSubmittedFileName();
                    photoPart.write(uploadPath + File.separator + fileName);
                    form.setPhoto(fileName);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (path.contains("edit")) {
            String id = req.getPathInfo().substring(1);
            form = empDao.findById(id);
        } else if (path.contains("create")) {
            empDao.create(form);
            form = new Employee();
        } else if (path.contains("update")) {
            empDao.update(form);
        } else if (path.contains("delete")) {
            empDao.deleteById(form.getId());
            form = new Employee();
        } else if (path.contains("reset")) {
            form = new Employee();
        }
        req.setAttribute("item", form);
        req.setAttribute("list", empDao.findAll());
        req.setAttribute("departments", depDao.findAll());
        req.getRequestDispatcher("/employee/index.jsp").forward(req, resp);
    }
}
