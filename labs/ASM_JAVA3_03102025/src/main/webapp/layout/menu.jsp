<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>
<style>
	nav {
	    background-color: #34495e;
	    display: flex;
	    justify-content: space-between;
	    align-items: center;
	    padding: 10px 40px;
	    flex-wrap: wrap;
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
    .user-info {
    	color: white;
    }
    
/* Modal nền */
.modal {
  display: none; /* Ẩn mặc định */
  position: fixed;
  z-index: 999;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color: rgba(0,0,0,0.5);
}

/* Hộp nội dung modal */
.modal-content {
  background-color: #fff;
  margin: 10% auto;
  padding: 20px;
  border-radius: 10px;
  width: 50%;
  box-shadow: 0 4px 8px rgba(0,0,0,0.3);
  position: relative;
}

/* Nút đóng */
.close {
  color: #aaa;
  position: absolute;
  top: 10px;
  right: 15px;
  font-size: 28px;
  font-weight: bold;
  cursor: pointer;
}
.close:hover {
  color: #e74c3c;
}

/* Danh sách bài viết */
.modal-content ul {
  list-style: none;
  padding: 0;
  margin-top: 20px;
}

.modal-content li {
  padding: 8px 0;
  border-bottom: 1px solid #ccc;
}

.modal-content a {
  color: #2c3e50;
  text-decoration: none;
}

.modal-content a:hover {
  color: #f1c40f;
}

/* Nút xóa */
.btn-clear {
  margin-top: 15px;
  background: #c0392b;
  color: white;
  border: none;
  padding: 8px 12px;
  border-radius: 5px;
  cursor: pointer;
}
.btn-clear:hover {
  background: #e74c3c;
}

    
</style> 


</head>
<body>
<!-- <nav>
    <a href="${pageContext.request.contextPath}/home">Trang chủ</a>
    <a href="${pageContext.request.contextPath}/news-list">Tin tức</a>
    <a href="contact.jsp">Liên hệ</a>

    <c:choose>
        <c:when test="${not empty sessionScope.user}">

            <span style="color: #ecf0f1; margin-left: 15px;">
                Xin chào, <strong>${sessionScope.user.fullname}</strong>
            </span>
            <a href="${pageContext.request.contextPath}/logout">Đăng xuất</a>

            <c:if test="${sessionScope.user.role}">

                <a href="${pageContext.request.contextPath}/admin/dashboard">Trang Quản Trị 🏠</a>
            </c:if>

            <c:if test="${not sessionScope.user.role}">
                <a href="${pageContext.request.contextPath}/admin/news">Trang Tác Nghiệp 📰</a>
            </c:if>

        </c:when>

        <c:otherwise>
            <a href="${pageContext.request.contextPath}/login">Đăng nhập</a>
        </c:otherwise>
    </c:choose>
</nav> -->

<nav>
    <!-- MENU BÊN TRÁI -->
    <div class="menu-left">
        <a href="${pageContext.request.contextPath}/home">Trang chủ</a>
        <a href="${pageContext.request.contextPath}/news-list">Tin tức</a>
        <a href="${pageContext.request.contextPath}/contact.jsp">Liên hệ</a>
        <a href="#" id="btnSaved">Đọc sau 🔖</a>
        
    </div>

    <!-- MENU BÊN PHẢI -->
    <div class="menu-right">
        <c:choose>
            <c:when test="${not empty sessionScope.user}">
                <span class="user-info">
                    Xin chào, <strong>${sessionScope.user.fullname}</strong>
                </span>
                <a href="${pageContext.request.contextPath}/logout">Đăng xuất</a>

                <c:if test="${sessionScope.user.role}">
                    <a href="${pageContext.request.contextPath}/admin/dashboard">🏠 Trang Quản Trị</a>
                </c:if>

                <c:if test="${not sessionScope.user.role}">
                    <a href="${pageContext.request.contextPath}/admin/news">📰 Trang Tác Nghiệp</a>
                </c:if>
            </c:when>

            <c:otherwise>
                <a href="${pageContext.request.contextPath}/login">Đăng nhập</a>
            </c:otherwise>
        </c:choose>
    </div>
</nav>

<!-- Modal Đọc sau -->
<div id="savedModal" class="modal">
  <div class="modal-content">
    <span class="close" id="closeSaved">&times;</span>
    <h3>📚 Danh sách bài viết đã lưu</h3>
    <ul id="savedList">
      <li><a href="#">Bài viết 1: Tin nóng bóng đá U23</a></li>
      <li><a href="#">Bài viết 2: Showbiz Việt Nam 2025</a></li>
      <li><a href="#">Bài viết 3: Kinh tế thế giới phục hồi</a></li>
    </ul>
    <button class="btn-clear">🗑 Xóa tất cả</button>
  </div>
</div>
<script>
document.addEventListener("DOMContentLoaded", function() {
    const modal = document.getElementById("savedModal");
    const btn = document.getElementById("btnSaved");
    const close = document.getElementById("closeSaved");

    // Khi nhấn nút “Đọc sau”
    btn.onclick = function(e) {
        e.preventDefault();
        modal.style.display = "block";
    };

    // Khi nhấn “×”
    close.onclick = function() {
        modal.style.display = "none";
    };

    // Khi nhấn ra ngoài modal
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    };
});
</script>
