package poly.com.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import poly.com.controller.Mailer;

@WebServlet("/sendMail")
public class SendMailServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String from = req.getParameter("from");
        String to = req.getParameter("to");
        String subject = req.getParameter("subject");
        String body = req.getParameter("body");

        try {
            Mailer.send(from, to, subject, body);
            req.setAttribute("message", "✅ Email sent successfully!");
        } catch (Exception e) {
            req.setAttribute("message", "❌ Failed to send email: " + e.getMessage());
            e.printStackTrace();
        }

        req.getRequestDispatcher("/sendMail.jsp").forward(req, resp);
    }
}
