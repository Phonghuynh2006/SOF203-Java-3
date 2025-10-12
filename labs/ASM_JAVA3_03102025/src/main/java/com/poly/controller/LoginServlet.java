package com.poly.controller;

import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import com.poly.dao.UserDAO;
import com.poly.model.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private UserDAO dao = new UserDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id = request.getParameter("username");
        String pw = request.getParameter("password");

        User user = dao.findById(id);

        if (user != null && user.getPassword().equals(pw)) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);

            // Kiểm tra role
            if (user.isRole()) {
                //response.sendRedirect("admin/news"); // admin
                response.sendRedirect("admin_dashboard.jsp"); // 👉 Trang chủ admin
            } else {
                response.sendRedirect("news-list"); // phóng viên
            }
        } else {
            request.setAttribute("message", "Sai tên đăng nhập hoặc mật khẩu!");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }
}
