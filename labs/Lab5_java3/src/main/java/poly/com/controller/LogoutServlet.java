package poly.com.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        // Xóa session
        HttpSession session = req.getSession(false);
        if (session != null) {
            session.invalidate();
        }

        // Quay về trang login
        resp.sendRedirect("login.jsp");
    }
}
