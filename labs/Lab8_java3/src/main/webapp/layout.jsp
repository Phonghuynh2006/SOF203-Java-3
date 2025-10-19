<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<fmt:setLocale value="${sessionScope.lang != null ? sessionScope.lang : 'vi'}"/>
<fmt:setBundle basename="languages.global"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FPT Polytechnic</title>
</head>
<body>

<header>
    <h1>FPT POLYTECHNIC</h1>
</header>

<nav>
    <hr>
    <c:url value="/home" var="path"/>
    <a href="${path}/index"><fmt:message key="menu.home"/></a> |
    <a href="${path}/about"><fmt:message key="menu.about"/></a> |
    <a href="${path}/contact"><fmt:message key="menu.contact"/></a>
    <hr>
    <!-- Nút chọn ngôn ngữ -->
    <a href="?lang=vi">[Tiếng Việt]</a> |
    <a href="?lang=en">[English]</a>
</nav>

<main>
    <jsp:include page="${view}" />
</main>

<footer>
    <hr><fmt:message key="footer.copy"/>
</footer>

</body>
</html>
