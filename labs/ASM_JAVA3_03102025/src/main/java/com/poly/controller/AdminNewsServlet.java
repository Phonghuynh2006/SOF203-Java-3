package com.poly.controller;

import java.io.IOException;
import java.util.List;
import com.poly.dao.NewsDAO;
import com.poly.model.News;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/admin/news")
public class AdminNewsServlet extends HttpServlet {
    private NewsDAO dao = new NewsDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            List<News> list = dao.findAll();
            request.setAttribute("list", list);
            request.getRequestDispatcher("/admin_news.jsp").forward(request, response);
            return;
        }

        switch (action) {
            case "edit":
                String id = request.getParameter("id");
                News n = dao.findById(id);
                request.setAttribute("news", n);
                request.setAttribute("list", dao.findAll());
                request.getRequestDispatcher("/admin_news.jsp").forward(request, response);
                break;

            case "delete":
                dao.delete(request.getParameter("id"));
                request.setAttribute("message", "❌ Xóa bản tin thành công!");
                request.setAttribute("list", dao.findAll());
                request.getRequestDispatcher("/admin_news.jsp").forward(request, response);
                break;

            default:
                response.sendRedirect("news");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String id = request.getParameter("id");
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String image = request.getParameter("image");
        String author = request.getParameter("author");
        String categoryId = request.getParameter("category");
        boolean home = "true".equals(request.getParameter("home"));

        News n = new News(id, title, content, image, new java.sql.Date(System.currentTimeMillis()),
                author, categoryId, 0, home);

        if (dao.findById(id) == null) {
            dao.insert(n);
            request.setAttribute("message", "🟢 Thêm bản tin thành công!");
        } else {
            dao.update(n);
            request.setAttribute("message", "🔵 Cập nhật bản tin thành công!");
        }

        request.setAttribute("list", dao.findAll());
        request.getRequestDispatcher("/admin_news.jsp").forward(request, response);
    }
}
