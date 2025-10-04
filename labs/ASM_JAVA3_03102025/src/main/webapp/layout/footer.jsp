<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Footer</title>

<style>
    footer {
        background-color: #2c3e50;
        color: white;
        text-align: center;
        padding: 20px 0;
        margin-top: 30px;
    }

    footer p {
        margin: 5px 0;
    }

    .newsletter {
        margin-bottom: 10px;
    }

    .newsletter input[type="email"] {
        padding: 8px;
        width: 220px;
        border: none;
        border-radius: 3px;
    }

    .newsletter button {
        padding: 8px 12px;
        border: none;
        border-radius: 3px;
        background-color: #f1c40f;
        color: #2c3e50;
        font-weight: bold;
        cursor: pointer;
    }

    .newsletter button:hover {
        background-color: #d4ac0d;
    }
</style>
</head>
<body>

<footer>
    <div class="newsletter">
        <form action="#" method="post">
            <label for="email">Đăng ký nhận bản tin:</label>
            <input type="email" name="email" id="email" placeholder="Nhập email của bạn" required>
            <button type="submit">Đăng ký</button>
        </form>
    </div>
    <p>© 2025 ABC News. All rights reserved.</p>
</footer>

</body>
</html>
