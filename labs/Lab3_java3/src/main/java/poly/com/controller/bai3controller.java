package poly.com.controller;


import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet ("/lab3bai3")
public class bai3controller extends HttpServlet {


	 @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 Map<String, Object> map = new HashMap<>(); 
		 map.put("name", "iPhone 2024"); 
		 map.put("price", 12345.678); 
		 map.put("date", new Date()); 
		 req.setAttribute("item", map); 
		 req.getRequestDispatcher("lab3bai3.jsp").forward(req, resp);
	 }
	
	
}
