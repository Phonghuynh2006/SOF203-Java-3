<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %> 
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="lab3bai1">Bài1</a>||
<a href="lab3bai2">Bài2</a>||
<a href="lab3bai3">Bài3</a>||
<a href="lab3bai4">Bài4</a>||
<hr/>
<<ul > 
 <li>Name: ${item.name}</li> 
 <li>Price:  
 <fmt:formatNumber value="${item.price}" pattern="#,###.00"/> 
 </li> 
 <li>Date:  
 <fmt:formatDate value="${item.date}" pattern="MMM dd, yyyy"/> 
 </li> 
</ul> 
</body>
</html>