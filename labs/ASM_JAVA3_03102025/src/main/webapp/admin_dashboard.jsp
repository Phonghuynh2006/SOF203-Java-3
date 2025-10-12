<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang quản trị - ABC News</title>

<style>
    .container {
        width: 80%;
        margin: 30px auto;
        background: white;
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0 0 8px rgba(0,0,0,0.2);
    }
    h1 {
        color: #2c3e50;
        text-align: center;
        margin-bottom: 20px;
    }
    .menu-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
        gap: 20px;
    }
    .card {
        background: #f9f9f9;
        border: 1px solid #ddd;
        border-radius: 8px;
        text-align: center;
        padding: 20px;
        box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        transition: transform 0.2s ease;
    }
    .card:hover {
        transform: scale(1.05);
        background: #ecf0f1;
    }
    .card a {
        text-decoration: none;
        color: #2c3e50;
        font-weight: bold;
        display: block;
    }
</style>

</head>
<body>

<jsp:include page="layout/header.jsp" />
<jsp:include page="layout/menu.jsp" />

<div class="container">
    <h1>Trang Quản Trị Hệ Thống</h1>

    <div class="menu-grid">
        <div class="card">
            <a href="${pageContext.request.contextPath}/admin/news">📰 Quản lý Tin tức</a>
        </div>
        <div class="card">
            <a href="${pageContext.request.contextPath}/admin/category">📂 Quản lý Loại Tin</a>
        </div>
        <div class="card">
            <a href="${pageContext.request.contextPath}/admin/user">👤 Quản lý Người Dùng</a>
        </div>
        <div class="card">
            <a href="${pageContext.request.contextPath}/admin/newsletter">📧 Quản lý Newsletter</a>
        </div>
    </div>
</div>

<jsp:include page="layout/footer.jsp" />

</body>
</html>