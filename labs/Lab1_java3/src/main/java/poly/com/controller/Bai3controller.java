package poly.com.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/bai3")
public class Bai3controller extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String url = req.getRequestURL().toString(); // Lấy URL
		    String uri = req.getRequestURI(); // Lấy URI
		    String queryString = req.getQueryString(); // Lấy Query String
		    String servletPath = req.getServletPath(); // Lấy Servlet Path
		    String contextPath = req.getContextPath(); // Lấy Context Path
		    String pathInfo = req.getPathInfo(); // Lấy Path Info
		    String method = req.getMethod(); // Lấy Method (GET, POST)

		    // Xuất các thông tin ra trình duyệt
		    resp.getWriter().println("<h2>URL: " + url + "</h2>");
		    resp.getWriter().println("<h2>URI: " + uri + "</h2>");
		    resp.getWriter().println("<h2>Query String: " + queryString + "</h2>");
		    resp.getWriter().println("<h2>Servlet Path: " + servletPath + "</h2>");
		    resp.getWriter().println("<h2>Context Path: " + contextPath + "</h2>");
		    resp.getWriter().println("<h2>Path Info: " + pathInfo + "</h2>");
		    resp.getWriter().println("<h2>Method: " + method + "</h2>");
	}

}
