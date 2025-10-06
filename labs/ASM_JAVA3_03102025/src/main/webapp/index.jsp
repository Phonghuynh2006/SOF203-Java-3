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
            <img src="https://photo-baomoi.bmcdn.me/w250_r3x2/2025_10_05_293_53408438/6ffb39673d2ed4708d3f.jpg.avif" alt="Ảnh tin 1">
            <h3><a href="news-detail.jsp">Premier League: Liverpool gục ngã trước Chelsea, Arsenal chiếm ngôi đầu</a></h3>
            <p>Ngày đăng: 04/10/2025</p>
        </div>
        <div class="news-item">
            <img src="https://photo-baomoi.bmcdn.me/w250_r3x2/2025_10_05_65_53407666/b7161b9c1fd5f68bafc4.jpg.avif" alt="Ảnh tin 2">
            <h3><a href="news-detail.jsp">Thủ đoạn trốn thuế tinh vi của Hoàng Hường và những cảnh báo với doanh nghiệp</a></h3>
            <p>Ngày đăng: 03/10/2025</p>
        </div>
        <div class="news-item">
            <img src="https://photo-baomoi.bmcdn.me/w250_r3x2/2025_10_05_294_53407774/654c31c7358edcd0859f.jpg.avif" alt="Ảnh tin 3">
            <h3><a href="news-detail.jsp">Hamas và Israel chuẩn bị khởi động đàm phán gián tiếp về vấn đề con tin</a></h3>
            <p>Ngày đăng: 02/10/2025</p>
        </div>
    </div>
</div>

<jsp:include page="layout/footer.jsp" />

</body>
</html>
