package poly.com.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/form/update")

public class Bai3controller extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Tạo Map giống đề bài
        Map<String, Object> map = new HashMap<>();
        map.put("fullname", "Nguyễn Văn Tèo");
        map.put("gender", true);   // true = Male
        map.put("country", "VN");

        req.setAttribute("user", map);
        req.setAttribute("editabled", true); // theo đề dùng tên editabled
        req.getRequestDispatcher("/bai3.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Lấy dữ liệu từ form
        String fullname = req.getParameter("fullname");
        String genderParam = req.getParameter("gender"); // "true" hoặc "false"
        String country = req.getParameter("country");

        // In ra console (giúp debug)
        System.out.println("POST fullname=" + fullname + ", gender=" + genderParam + ", country=" + country);

        // Đặt lại Map để forward về form.jsp (hiển thị lại giá trị đã submit)
        Map<String, Object> map = new HashMap<>();
        map.put("fullname", fullname == null ? "" : fullname);
        // convert genderParam sang boolean (nếu null => false)
        boolean gender = "true".equalsIgnoreCase(genderParam);
        map.put("gender", gender);
        map.put("country", country == null ? "" : country);

        req.setAttribute("user", map);
        // sau submit ta có thể cho editabled = false để bật nút Create và cho fullname có thể chỉnh
        req.setAttribute("editabled", false);
        req.getRequestDispatcher("/bai3.jsp").forward(req, resp);
    }
}
