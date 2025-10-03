<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="bai1_lab3">Bài1</a>||
<a href="bai2_lab3">Bài2</a>||
<a href="bai3_lab3">Bài3</a>||
<a href="bai4_lab3">Bài4</a>||
    
    <hr>
    <li>Title: ${fn:toUpperCase(item.title)}</li>
    <li>
        Content: 
        <c:choose>
            <c:when test="${fn:length(item.content) > 100}">
                ${fn:substring(item.content, 0, 100)} ...
            </c:when>
            <c:otherwise>
                ${item.content}
            </c:otherwise>
        </c:choose>
    </li>
</body>
</html>