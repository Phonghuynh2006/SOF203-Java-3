package poly.com.controller;

import java.io.IOException;
import java.util.Date;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/bai1ShareServlet")
public class Bai1controller extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("message", "Welcome to FPT Polytechnic");
        req.setAttribute("now", new Date());      
        req.getRequestDispatcher("/bai1.jsp").forward(req, resp);
    }
}
