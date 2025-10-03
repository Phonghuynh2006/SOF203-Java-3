<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Register</h2>
<form method="post" action="${pageContext.request.contextPath}/account/register">
    Fullname: <input name="fullname"><br>
    Email: <input name="email"><br>
    Gender:
    <input type="radio" name="gender" value="male"> Male
    <input type="radio" name="gender" value="female"> Female<br>
    Interests:
    <input type="checkbox" name="interest" value="music"> Music
    <input type="checkbox" name="interest" value="sport"> Sport
    <input type="checkbox" name="interest" value="coding"> Coding<br>
    <button type="submit">Register</button>
</form>
<p>${message}</p>
</body>
</html>  