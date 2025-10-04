<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi tiết tin tức - ABC News</title>

<style>
    .container {
        width: 70%;
        margin: 20px auto;
        background: white;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 5px rgba(0,0,0,0.2);
    }

    h2 {
        color: #2c3e50;
        border-bottom: 2px solid #2c3e50;
        padding-bottom: 8px;
    }

    .news-content {
        margin-top: 20px;
        line-height: 1.6;
        text-align: justify;
    }

    .news-content img {
        width: 100%;
        border-radius: 5px;
        margin: 15px 0;
    }

    .related-news {
        margin-top: 30px;
    }

    .related-news h3 {
        color: #2c3e50;
        border-bottom: 1px solid #ccc;
        padding-bottom: 5px;
    }

    .related-news ul {
        list-style-type: none;
        padding: 0;
    }

    .related-news li {
        margin: 8px 0;
    }

    .related-news a {
        text-decoration: none;
        color: #34495e;
    }

    .related-news a:hover {
        color: #f1c40f;
    }
</style>
</head>
<body>

<!-- Include layout -->
<jsp:include page="layout/header.jsp" />
<jsp:include page="layout/menu.jsp" />

<div class="container">
    <h2>Thời tiết hôm nay nắng đẹp</h2>
    <p><strong>Tác giả:</strong> Nguyễn Văn A | <strong>Ngày đăng:</strong> 04/10/2025 | <strong>Lượt xem:</strong> 120</p>
    
    <div class="news-content">
        <img src="https://placehold.co/800x400" alt="Ảnh minh họa tin tức">
        <p>Hôm nay, thời tiết trên cả nước nhìn chung khá thuận lợi. Các tỉnh miền Bắc trời nắng nhẹ, nhiệt độ dao động từ 26-31 độ C. 
        Miền Trung tiếp tục có nắng nóng cục bộ, trong khi miền Nam duy trì hình thái thời tiết khô ráo, thích hợp cho các hoạt động ngoài trời.</p>
        <p>Dự báo trong những ngày tới, nhiệt độ sẽ tăng nhẹ ở khu vực Bắc Bộ và giảm dần ở khu vực Trung Bộ. 
        Người dân nên chú ý uống nhiều nước, bảo vệ da khi ra ngoài nắng để tránh say nóng.</p>
    </div>

    <div class="related-news">
        <h3>Tin cùng loại</h3>
        <ul>
            <li><a href="news-detail.jsp">Mưa lớn kéo dài ở miền Trung</a></li>
            <li><a href="news-detail.jsp">Nhiệt độ miền Bắc giảm mạnh trong đêm</a></li>
            <li><a href="news-detail.jsp">Thời tiết thuận lợi cho lễ hội trung thu</a></li>
        </ul>
    </div>
</div>

<jsp:include page="layout/footer.jsp" />

</body>
</html>
