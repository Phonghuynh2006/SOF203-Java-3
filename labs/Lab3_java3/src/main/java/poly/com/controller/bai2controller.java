package poly.com.controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import poly.com.country.Country;
@WebServlet("/bai2_lab3")
public class bai2controller extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<Country> list = List.of( 
				 new Country("VN", "Việt Nam"), 
				 new Country("US", "United States"), 
				 new Country("CN", "China") 
				); 
				req.setAttribute("countries", list);
		
		 req.getRequestDispatcher("bai2.jsp").forward(req, resp);
		 
	     

	}
	
}
