<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý người dùng - ABC News</title>

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
        color: #2c3e50;
        border-bottom: 2px solid #2c3e50;
        padding-bottom: 8px;
        margin-bottom: 15px;
    }

    form {
        margin-bottom: 30px;
    }

    form input[type="text"],
    form input[type="email"],
    form input[type="date"],
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
    <h2>Quản lý người dùng</h2>

    <!-- Form nhập người dùng -->
    <form action="#" method="post">
        <label>Mã người dùng:</label>
        <input type="text" name="id" placeholder="Nhập mã đăng nhập" required>

        <label>Họ và tên:</label>
        <input type="text" name="fullname" placeholder="Nhập họ và tên" required>

        <label>Email:</label>
        <input type="email" name="email" placeholder="Nhập email" required>

        <label>Điện thoại:</label>
        <input type="text" name="mobile" placeholder="Nhập số điện thoại">

        <label>Ngày sinh:</label>
        <input type="date" name="birthday">

        <label>Giới tính:</label>
        <select name="gender">
            <option value="true">Nam</option>
            <option value="false">Nữ</option>
        </select>

        <label>Vai trò:</label>
        <select name="role">
            <option value="true">Quản trị viên</option>
            <option value="false">Phóng viên</option>
        </select>

        <div style="margin-top: 10px;">
            <button class="btn-add" type="submit">Thêm</button>
            <button class="btn-update" type="button">Sửa</button>
            <button class="btn-delete" type="button">Xóa</button>
            <button class="btn-clear" type="reset">Mới</button>
        </div>
    </form>

    <!-- Bảng danh sách người dùng -->
    <table>
        <thead>
            <tr>
                <th>Mã</th>
                <th>Họ tên</th>
                <th>Email</th>
                <th>Điện thoại</th>
                <th>Giới tính</th>
                <th>Vai trò</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>U001</td>
                <td>Nguyễn Văn A</td>
                <td>a.nguyen@abcnews.vn</td>
                <td>0912345678</td>
                <td>Nam</td>
                <td>Quản trị viên</td>
            </tr>
            <tr>
                <td>U002</td>
                <td>Trần Thị B</td>
                <td>b.tran@abcnews.vn</td>
                <td>0987654321</td>
                <td>Nữ</td>
                <td>Phóng viên</td>
            </tr>
        </tbody>
    </table>
</div>

<jsp:include page="layout/footer.jsp" />

</body>
</html>
