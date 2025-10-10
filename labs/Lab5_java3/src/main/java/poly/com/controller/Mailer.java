package poly.com.controller;


import java.util.Properties;
import jakarta.mail.*;
import jakarta.mail.internet.*;

public class Mailer {
    public static void send(String from, String to, String subject, String body) {
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                // ✅ Gmail thật + App Password (16 ký tự)
                return new PasswordAuthentication("phonghuynh031226@gmail.com", "rfcz tokr poul qdlf");
            }
        });

        try {
            MimeMessage mail = new MimeMessage(session);
            mail.setFrom(new InternetAddress(from));
            mail.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            mail.setSubject(subject, "UTF-8");
            mail.setContent(body, "text/html; charset=UTF-8");
            Transport.send(mail);
            System.out.println("✅ Email sent successfully!");
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}
