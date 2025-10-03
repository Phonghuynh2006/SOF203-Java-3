package poly.com.controller;

import java.io.File;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet("/upload")

@MultipartConfig(
    fileSizeThreshold = 1024 * 1024,
    maxFileSize = 1024 * 1024 * 10,
    maxRequestSize = 1024 * 1024 * 50
)
public class uploadcontroller extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String UPLOAD_DIR = "static/file";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/upload.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Part filePart = req.getPart("photo");
        if (filePart == null || filePart.getSize() == 0) {
            req.setAttribute("message", "Chưa chọn file!");
            req.getRequestDispatcher("/WEB-INF/views/upload.jsp").forward(req, resp);
            return;
        }

        String fileName = filePart.getSubmittedFileName();
        String realPath = req.getServletContext().getRealPath("/") + UPLOAD_DIR;

        File uploadDir = new File(realPath);
        if (!uploadDir.exists()) uploadDir.mkdirs();

        filePart.write(realPath + File.separator + fileName);

        req.setAttribute("message", "Upload thành công: " + fileName);
        req.getRequestDispatcher("/upload.jsp").forward(req, resp);
    }
}
