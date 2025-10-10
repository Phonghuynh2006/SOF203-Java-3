<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bài 3 - Đăng nhập bằng Cookie & Session</title>
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
    .login-box {
        background: white;
        padding: 30px 40px;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0,0,0,0.15);
        text-align: center;
    }
    input {
        margin: 10px 0;
        padding: 10px;
        width: 230px;
    }
    button {
        background: #007bff;
        color: white;
        border: none;
        padding: 10px 20px;
        border-radius: 6px;
        cursor: pointer;
    }
    button:hover {
        background: #0056b3;
    }
    .msg {
        color: green;
        margin-top: 10px;
    }
    a {
        display: block;
        margin-top: 20px;
        color: #007bff;
        text-decoration: none;
    }
</style>
</head>
<body>
<div class="login-box">
    <h2>Đăng nhập</h2>
    <form action="login" method="post">
        <input type="text" name="username" placeholder="Tên đăng nhập" value="${username}" required><br>
        <input type="password" name="password" placeholder="Mật khẩu" value="${password}" required><br>
        <label><input type="checkbox" name="remember-me" ${remember}> Ghi nhớ đăng nhập</label><br><br>
        <button type="submit">Đăng nhập</button>
    </form>

    <p class="msg">${message}</p>

    <a href="index.jsp">⬅️ Quay lại Menu</a>
</div>
</body>
</html>
