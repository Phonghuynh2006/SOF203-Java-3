package poly.com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({"/home/index", "/home/about", "/home/contact"})
public class HomeServlet extends HttpServlet {

	@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("index")) {
            req.setAttribute("view", "/index.jsp");
        } else if (uri.contains("about")) {
            req.setAttribute("view", "/about.jsp");
        } else if (uri.contains("contact")) {
            req.setAttribute("view", "/contact.jsp");
        } else {
            req.setAttribute("view", "/index.jsp"); // Trang mặc định
        }
        req.getRequestDispatcher("/layout.jsp").forward(req, resp);
    }
}
