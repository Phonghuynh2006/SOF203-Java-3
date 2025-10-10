<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chính - Lab5_java</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f6f8;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .container {
        background: white;
        padding: 40px 50px;
        border-radius: 12px;
        box-shadow: 0 0 20px rgba(0,0,0,0.1);
        text-align: center;
    }
    h2 {
        color: #333;
        margin-bottom: 20px;
    }
    p {
        margin-bottom: 30px;
        color: #555;
    }
    a {
        display: inline-block;
        text-decoration: none;
        background: #007bff;
        color: white;
        padding: 12px 24px;
        border-radius: 6px;
        margin: 10px;
        transition: 0.3s;
    }
    a:hover {
        background: #0056b3;
    }
</style>
</head>
<body>
<div class="container">
    <h2>Chào mừng đến với Lab5 Java!</h2>
    <p>Chọn chức năng bạn muốn thực hiện:</p>

    <a href="form.jsp">🧩 Bài 1 - Form nhập liệu (BeanUtils)</a>
    <a href="sendMail.jsp">✉️ Bài 2 - Gửi Email (JavaMail)</a>
    <a href="login.jsp">🔐 Bài 3 - Đăng nhập (Cookie & Session)</a>
</div>
</body>
</html>
