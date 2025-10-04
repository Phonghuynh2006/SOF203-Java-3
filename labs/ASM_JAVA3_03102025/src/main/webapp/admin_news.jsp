<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý tin tức - ABC News</title>

<style>
    .container {
        width: 85%;
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
        margin-bottom: 15px;
    }

    form {
        margin-bottom: 30px;
    }

    form input[type="text"],
    form input[type="date"],
    form select,
    form textarea {
        width: 100%;
        padding: 8px;
        margin: 8px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    form button {
        padding: 8px 15px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        margin-right: 5px;
        color: white;
        font-weight: bold;
    }

    .btn-add { background-color: #27ae60; }
    .btn-update { background-color: #2980b9; }
    .btn-delete { background-color: #c0392b; }
    .btn-clear { background-color: #7f8c8d; }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    th, td {
        border: 1px solid #ddd;
        padding: 10px;
        text-align: left;
    }

    th {
        background-color: #2c3e50;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    img {
        width: 80px;
        height: 50px;
        object-fit: cover;
        border-radius: 5px;
    }
</style>
</head>
<body>

<!-- Include layout -->
<jsp:include page="layout/header.jsp" />
<jsp:include page="layout/menu.jsp" />

<div class="container">
    <h2>Quản lý tin tức</h2>

    <!-- Form nhập tin -->
    <form action="#" method="post">
        <label>Mã tin:</label>
        <input type="text" name="id" placeholder="Nhập mã bản tin" required>

        <label>Tiêu đề:</label>
        <input type="text" name="title" placeholder="Nhập tiêu đề bản tin" required>

        <label>Nội dung:</label>
        <textarea name="content" rows="4" placeholder="Nhập nội dung bản tin"></textarea>

        <label>Ảnh (URL):</label>
        <input type="text" name="image" placeholder="https://...">

        <label>Ngày đăng:</label>
        <input type="date" name="date">

        <label>Loại tin:</label>
        <select name="category">
            <option>Thể thao</option>
            <option>Kinh tế</option>
            <option>Giải trí</option>
        </select>

        <label>Trang nhất:</label>
        <select name="home">
            <option value="true">Có</option>
            <option value="false">Không</option>
        </select>

        <div style="margin-top: 10px;">
            <button class="btn-add" type="submit">Thêm</button>
            <button class="btn-update" type="button">Sửa</button>
            <button class="btn-delete" type="button">Xóa</button>
            <button class="btn-clear" type="reset">Mới</button>
        </div>
    </form>

    <!-- Bảng danh sách tin -->
    <table>
        <thead>
            <tr>
                <th>Mã tin</th>
                <th>Tiêu đề</th>
                <th>Ảnh</th>
                <th>Ngày đăng</th>
                <th>Loại tin</th>
                <th>Trang nhất</th>
                <th>Tác giả</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>T001</td>
                <td>Thời tiết hôm nay nắng đẹp</td>
                <td><img src="https://placehold.co/80x50" alt=""></td>
                <td>04/10/2025</td>
                <td>Thời tiết</td>
                <td>Có</td>
                <td>Nguyễn Văn A</td>
            </tr>
            <tr>
                <td>T002</td>
                <td>Tuyển Việt Nam thắng đậm</td>
                <td><img src="https://placehold.co/80x50" alt=""></td>
                <td>03/10/2025</td>
                <td>Thể thao</td>
                <td>Không</td>
                <td>Trần B</td>
            </tr>
        </tbody>
    </table>
</div>

<jsp:include page="layout/footer.jsp" />

</body>
</html>
