package poly.com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import poly.com.country.country;

@WebServlet("/bai1ShareServlet") // Đổi thành /bai1ShareServlet để khớp với index.jsp
public class bai1controller extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Tạo danh sách quốc gia
        List<country> countries = new ArrayList<>();
        countries.add(new country("VN", "Viet Nam"));
        countries.add(new country("US", "United States"));
        countries.add(new country("CN", "China"));

        // Truyền danh sách vào request
        request.setAttribute("countries", countries);

        // Forward đến bai1.jsp
        request.getRequestDispatcher("/bai1.jsp").forward(request, response);
    }
}