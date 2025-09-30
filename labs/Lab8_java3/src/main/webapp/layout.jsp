<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<header>
        <h1>FPT POLYTECHNIC</h1>
    </header>
    <nav>
        <hr>
        <a href="${pageContext.request.contextPath}home/index">Home</a> |
        <a href="${pageContext.request.contextPath}home/about">About Us</a> |
        <a href="${pageContext.request.contextPath}home/contact">Contact Us</a>
        <hr>
    </nav>
    <main>
        <jsp:include page="${view}"/>
    </main>
    <footer>
        <hr>
        <p>&copy; 2024 by FPT Polytechnic. All rights reserved.</p>
    </footer>
</body>
</html>