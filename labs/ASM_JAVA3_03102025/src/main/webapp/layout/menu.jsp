<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>
<style>
    nav {
        background-color: #34495e;
        display: flex;
        justify-content: center;
        padding: 10px 0;
    }
    nav a {
        color: white;
        text-decoration: none;
        margin: 0 15px;
        font-weight: bold;
        transition: 0.3s;
    }
    nav a:hover {
        color: #f1c40f;
    }
</style>
</head>
<body>
<nav>
    <a href="index.jsp">Trang chủ</a>
    <a href="news-list">Tin tức</a>
    <a href="login">Đăng nhập</a>
    <a href="#">Liên hệ</a>
</nav>
