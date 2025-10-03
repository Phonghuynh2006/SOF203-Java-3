<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Calculator</h2>
<form method="post" action="${pageContext.request.contextPath}/calculate">
    A: <input name="a"><br>
    B: <input name="b"><br>
    <button formaction="${pageContext.request.contextPath}/calculate/add" type="submit">+</button>
    <button formaction="${pageContext.request.contextPath}/calculate/sub" type="submit">-</button>
</form>  
<p>${message}</p>
</body>
</html>