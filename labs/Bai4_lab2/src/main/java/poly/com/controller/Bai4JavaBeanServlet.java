package poly.com.controller;


import java.io.IOException;

import poly.com.controller.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Bai4JavaBeanServlet")
public class Bai4JavaBeanServlet extends HttpServlet {

	    @Override
	    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        // Tạo và gán dữ liệu cho User
	        User bean = new User();
	        bean.setFullname("Nguyễn Văn Tèo");
	        bean.setGender(true);
	        bean.setCountry("VN");
	        req.setAttribute("user", bean);
	        req.setAttribute("editabled", true);
	        req.getRequestDispatcher("/bai4.jsp").forward(req, resp);
	    }

	    @Override
	    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        // Lấy dữ liệu từ form
	        String fullname = req.getParameter("fullname");
	        String genderStr = req.getParameter("gender"); // Checkbox
	        String country = req.getParameter("country");

	        // Tạo và gán dữ liệu cho User
	        User bean = new User();
	        bean.setFullname(fullname != null ? fullname : "Không có tên");
	        bean.setGender(genderStr != null && genderStr.equals("on")); // Kiểm tra checkbox
	        bean.setCountry(country != null ? country : "Không có quốc gia");

	        // Đặt vào request
	        req.setAttribute("user", bean);
	        req.setAttribute("editabled", true);
	        req.getRequestDispatcher("/bai4.jsp").forward(req, resp);
	    }

}