<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý Newsletter - ABC News</title>

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

    form input[type="email"] {
        width: 100%;
        padding: 10px;
        margin: 8px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    form select {
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

    .status-true {
        color: green;
        font-weight: bold;
    }

    .status-false {
        color: red;
        font-weight: bold;
    }
</style>
</head>
<body>

<!-- Include layout -->
<jsp:include page="layout/header.jsp" />
<jsp:include page="layout/menu.jsp" />

<div class="container">
    <h2>Quản lý Newsletter</h2>

    <!-- Form thêm email -->
    <form action="#" method="post">
        <label>Email nhận tin:</label>
        <input type="email" name="email" placeholder="Nhập email" required>

        <label>Trạng thái:</label>
        <select name="enabled">
            <option value="true">Còn hiệu lực</option>
            <option value="false">Hết hiệu lực</option>
        </select>

        <div style="margin-top: 10px;">
            <button class="btn-add" type="submit">Thêm</button>
            <button class="btn-update" type="button">Sửa</button>
            <button class="btn-delete" type="button">Xóa</button>
            <button class="btn-clear" type="reset">Mới</button>
        </div>
    </form>

    <!-- Bảng danh sách email -->
    <table>
        <thead>
            <tr>
                <th>Email</th>
                <th>Trạng thái</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>example1@gmail.com</td>
                <td class="status-true">Còn hiệu lực</td>
            </tr>
            <tr>
                <td>example2@yahoo.com</td>
                <td class="status-false">Hết hiệu lực</td>
            </tr>
        </tbody>
    </table>
</div>

<jsp:include page="layout/footer.jsp" />

</body>
</html>
