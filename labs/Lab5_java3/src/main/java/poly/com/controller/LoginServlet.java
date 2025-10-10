package poly.com.controller;

import java.io.IOException;
import java.util.Base64;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        Cookie[] cookies = req.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("user".equals(cookie.getName())) {
                    try {
                        byte[] decodedBytes = Base64.getDecoder().decode(cookie.getValue());
                        String decoded = new String(decodedBytes);
                        String[] info = decoded.split(":");
                        req.setAttribute("username", info[0]);
                        req.setAttribute("password", info[1]);
                        req.setAttribute("remember", "checked");
                    } catch (Exception ignored) {}
                }
            }
        }

        req.getRequestDispatcher("/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String remember = req.getParameter("remember-me");

        if ("admin".equalsIgnoreCase(username) && "123".equals(password)) {
            req.getSession().setAttribute("user", username);

            if (remember != null) {
                String encoded = Base64.getEncoder()
                        .encodeToString((username + ":" + password).getBytes());
                Cookie cookie = new Cookie("user", encoded);
                cookie.setMaxAge(7 * 24 * 60 * 60);
                cookie.setPath("/");
                resp.addCookie(cookie);
            } else {
                Cookie cookie = new Cookie("user", "");
                cookie.setMaxAge(0);
                cookie.setPath("/");
                resp.addCookie(cookie);
            }

            // ✅ Chuyển sang trang welcome
            resp.sendRedirect("welcome.jsp");
        } else {
            req.setAttribute("message", "❌ Sai tên đăng nhập hoặc mật khẩu!");
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
        }
    }
}
