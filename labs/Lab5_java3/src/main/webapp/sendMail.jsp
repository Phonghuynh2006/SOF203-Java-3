<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Send Email</title>
</head>
<body>
<h2>Gửi Email</h2>
<form action="sendMail" method="post">
    <label>From:</label><br>
    <input type="email" name="from" required><br><br>
 
    <label>To:</label><br>
    <input type="email" name="to" required><br><br>

    <label>Subject:</label><br>
    <input type="text" name="subject" required><br><br>

    <label>Message:</label><br>
    <textarea name="body" rows="6" cols="40" required></textarea><br><br>

    <button type="submit">Send Email</button>
</form>

<p style="color:green;">${message}</p>
</body>
</html>
