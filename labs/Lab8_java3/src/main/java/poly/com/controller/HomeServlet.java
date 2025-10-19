package poly.com.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/home/*")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String path = req.getPathInfo();
        String view = "/index.jsp";

        if (path == null || path.equals("/index")) {
            view = "/index.jsp";
        } else if (path.equals("/about")) {
            view = "/about.jsp";
        } else if (path.equals("/contact")) {
            view = "/contact.jsp";
        }

        req.setAttribute("view", view);
        req.getRequestDispatcher("/layout.jsp").forward(req, resp);
    }
}
