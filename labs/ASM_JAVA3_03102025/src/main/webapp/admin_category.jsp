<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý loại tin - ABC News</title>

<style>
    .container {
        width: 60%;
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

    form input[type="text"] {
        width: 100%;
        padding: 10px;
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
        margin-top: 20px;
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
</style>
</head>
<body>

<!-- Include layout -->
<jsp:include page="layout/header.jsp" />
<jsp:include page="layout/menu.jsp" />

<div class="container">
    <h2>Quản lý loại tin</h2>

    <!-- Form nhập loại tin -->
    <form action="#" method="post">
        <label>Mã loại tin:</label>
        <input type="text" name="id" placeholder="Nhập mã loại tin" required>

        <label>Tên loại tin:</label>
        <input type="text" name="name" placeholder="Nhập tên loại tin" required>

        <div style="margin-top: 10px;">
            <button class="btn-add" type="submit">Thêm</button>
            <button class="btn-update" type="button">Sửa</button>
            <button class="btn-delete" type="button">Xóa</button>
            <button class="btn-clear" type="reset">Mới</button>
        </div>
    </form>

    <!-- Bảng danh sách loại tin -->
    <table>
        <thead>
            <tr>
                <th>Mã loại</th>
                <th>Tên loại tin</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>LT01</td>
                <td>Thể thao</td>
            </tr>
            <tr>
                <td>LT02</td>
                <td>Kinh tế</td>
            </tr>
            <tr>
                <td>LT03</td>
                <td>Giải trí</td>
            </tr>
        </tbody>
    </table>
</div>

<jsp:include page="layout/footer.jsp" />

</body>
</html>
