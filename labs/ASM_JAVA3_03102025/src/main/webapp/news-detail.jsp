<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${news.title} - ABC News</title>

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
    <!-- Nếu tìm thấy tin -->
    <c:if test="${not empty news}">
        <h2>${news.title}</h2>
        <p>
            <strong>Tác giả:</strong> ${news.author}
            | <strong>Ngày đăng:</strong> ${news.postedDate}
            | <strong>Lượt xem:</strong> ${news.viewCount}
        </p>

        <div class="news-content">
            <img src="${news.image}" alt="${news.title}">
            <p>${news.content}</p>
        </div>

        <!-- Tin cùng loại -->
        <div class="related-news">
            <h3>Tin cùng loại</h3>
            <ul>
                <c:forEach var="item" items="${relatedList}">
                    <li>
                        <a href="news-detail?id=${item.id}">${item.title}</a>
                    </li>
                </c:forEach>
            </ul>

            <c:if test="${empty relatedList}">
                <p>Chưa có tin cùng loại.</p>
            </c:if>
        </div>

        <p style="margin-top: 20px;"><a href="news-list">&larr; Quay lại danh sách</a></p>
    </c:if>

    <!-- Nếu không có tin -->
    <c:if test="${empty news}">
        <h3>Không tìm thấy bài viết này!</h3>
        <p><a href="news-list">&larr; Quay lại danh sách</a></p>
    </c:if>
</div>

<jsp:include page="layout/footer.jsp" />
</body>
</html>
