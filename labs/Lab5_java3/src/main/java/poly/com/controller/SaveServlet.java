package poly.com.controller;

import java.io.IOException;
import java.util.Date;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import poly.com.model.Staff;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;

@WebServlet("/Save")
public class SaveServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        req.getRequestDispatcher("/form.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        Staff bean = new Staff();
        try {
            DateConverter dtc = new DateConverter(new Date());
            dtc.setPattern("MM/dd/yyyy");
            ConvertUtils.register(dtc, Date.class);

            BeanUtils.populate(bean, req.getParameterMap());


            System.out.println("Fullname: " + bean.getFullname());
            System.out.println("Birthday: " + bean.getBirthday());
            System.out.println("Gender: " + bean.isGender());
            System.out.println("Country: " + bean.getCountry());
            System.out.println("Salary: " + bean.getSalary());

            if (bean.getHobbies() != null) {
                for (String h : bean.getHobbies()) {
                    System.out.println("Hobby: " + h);
                }
            }

            req.setAttribute("bean", bean);
        } catch (Exception e) {
            e.printStackTrace();
        }
        req.getRequestDispatcher("/result.jsp").forward(req, resp);
    }
}
