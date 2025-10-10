<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String username = (String) session.getAttribute("user");
    if (username == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chào mừng</title>
<style>
    body { 
        font-family: Arial, sans-serif;
        background-color: #f9fafb;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .box {
        background: white;
        padding: 30px 40px;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0,0,0,0.15);
        text-align: center;
    }
    a {
        display: inline-block;
        background: #007bff;
        color: white;
        padding: 10px 20px;
        border-radius: 6px;
        text-decoration: none;
        margin-top: 20px;
    }
    a:hover {
        background: #0056b3;
    }
</style>
</head>
<body>
<div class="box">
    <h2>Xin chào, <%= username %> 👋</h2>
    <p>Bạn đã đăng nhập thành công!</p>
    <p> hôm nay bn thế nào ? có đang làm bài chăm chỉ không </p>
    <a href="logout">Đăng xuất</a>
</div>
</body>
</html>
