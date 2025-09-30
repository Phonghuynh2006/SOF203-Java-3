package poly.com.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/bai2UserServlet")

public class Bai2controller extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // attribute message
        req.setAttribute("message", "Welcome to FPT Polytechnic");

        // attribute user (HashMap)
        Map<String, Object> map = new HashMap<>();
        map.put("fullname", "Nguyễn Văn Tèo");
        map.put("gender", "Male");
        map.put("country", "Việt Nam");

        req.setAttribute("user", map);

        // forward đến page.jsp
        req.getRequestDispatcher("/Bai2.jsp").forward(req, resp);
    }
}
