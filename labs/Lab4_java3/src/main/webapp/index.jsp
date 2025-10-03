<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h2>Chào mừng bạn đến Lab4</h2>
    <ul>
        <li><a href="${pageContext.request.contextPath}/account/login">Login</a></li>
        <li><a href="${pageContext.request.contextPath}/calculate">Calculate</a></li>
        <li><a href="${pageContext.request.contextPath}/account/register">Register</a></li>
        <li><a href="${pageContext.request.contextPath}/upload">Upload</a></li>
    </ul>
</body>
</html>  