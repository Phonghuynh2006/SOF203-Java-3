package poly.com.controller;

import java.io.IOException;
import java.util.Arrays;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/account/register")

public class registercontroller extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String fullname = req.getParameter("fullname");
        String email = req.getParameter("email");
        String gender = req.getParameter("gender");
        String[] interests = req.getParameterValues("interest");

        String msg = "Đăng ký thành công! "
                + "Tên: " + fullname
                + ", Email: " + email
                + ", Giới tính: " + gender
                + ", Sở thích: " + (interests == null ? "[]" : Arrays.toString(interests));

        req.setAttribute("message", msg);
        req.getRequestDispatcher("/register.jsp").forward(req, resp);
    }
}
