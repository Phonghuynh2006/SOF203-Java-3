<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ - ABC News</title>

<style>
    .container {
        width: 80%;
        margin: 20px auto;
        background: white;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 5px rgba(0,0,0,0.2);
    }

    h2 {
        border-bottom: 2px solid #2c3e50;
        padding-bottom: 5px;
        color: #2c3e50;
    }

    .news-list {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
        gap: 20px;
        margin-top: 15px;
    }

    .news-item {
        border: 1px solid #ddd;
        padding: 10px;
        border-radius: 5px;
        text-align: center;
        background-color: #fafafa;
    }

    .news-item img {
        width: 100%;
        height: 150px;
        object-fit: cover;
        border-radius: 5px;
    }

    .news-item h3 {
        margin: 10px 0 5px;
    }

    .news-item a {
        text-decoration: none;
        color: #2c3e50;
    }

    .news-item a:hover {
        color: #f1c40f;
    }
</style>
</head>
<body>

<!-- Include layout -->
<jsp:include page="layout/header.jsp" />
<jsp:include page="layout/menu.jsp" />

<div class="container">
    <h2>Tin nổi bật</h2>
    <div class="news-list">
        <div class="news-item">
            <img src="https://placehold.co/300x150" alt="Ảnh tin 1">
            <h3><a href="news-detail.jsp">Thời tiết hôm nay nắng đẹp</a></h3>
            <p>Ngày đăng: 04/10/2025</p>
        </div>
        <div class="news-item">
            <img src="https://placehold.co/300x150" alt="Ảnh tin 2">
            <h3><a href="news-detail.jsp">Chính thức: Tuyển Việt Nam thắng đậm</a></h3>
            <p>Ngày đăng: 03/10/2025</p>
        </div>
        <div class="news-item">
            <img src="https://placehold.co/300x150" alt="Ảnh tin 3">
            <h3><a href="news-detail.jsp">Giá xăng giảm mạnh từ hôm nay</a></h3>
            <p>Ngày đăng: 02/10/2025</p>
        </div>
    </div>
</div>

<jsp:include page="layout/footer.jsp" />

</body>
</html>
