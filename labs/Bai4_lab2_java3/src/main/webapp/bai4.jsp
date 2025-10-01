<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Thông tin người dùng</h2>
    <p>Họ tên: ${user.fullname}</p>
    <p>Giới tính: ${user.gender ? 'Nam' : 'Nữ'}</p>
    <p>Quốc gia: ${user.country}</p>

    <h3>Cập nhật thông tin</h3>
    <form action="Bai4JavaBeanServlet" method="post">
        <label>Họ tên: <input type="text" name="fullname" value="${user.fullname}"></label><br>
        <label>Giới tính: <input type="checkbox" name="gender" ${user.gender ? 'checked' : ''}> Nam</label><br>
        <label>Quốc gia: <input type="text" name="country" value="${user.country}"></label><br>
        <input type="submit" value="Cập nhật">
    </form>
</body>
</html>