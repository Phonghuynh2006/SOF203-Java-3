package poly.com.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({"/calculate", "/calculate/add", "/calculate/sub"})
public class calculatecontroller extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("message", "Nhập số và chọn phép tính");
        req.getRequestDispatcher("/calculate.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        try {
            double a = Double.parseDouble(req.getParameter("a"));
            double b = Double.parseDouble(req.getParameter("b"));
            String path = req.getServletPath();

            String msg;
            if (path.endsWith("/sub")) {
                msg = a + " - " + b + " = " + (a - b);
            } else {
                msg = a + " + " + b + " = " + (a + b);
            }

            req.setAttribute("message", msg);
        } catch (Exception e) {
            req.setAttribute("message", "Vui lòng nhập số hợp lệ!");
        }
        req.getRequestDispatcher("/calculate.jsp").forward(req, resp);
    }
}
