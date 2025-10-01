<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách quốc gia</title>
</head>
<body>
<a href="lab3bai1">Bài1</a>||
<a href="lab3bai2">Bài2</a>||
<a href="lab3bai3">Bài3</a>||
<a href="lab3bai4">Bài4</a>||
<hr/>
<select name="country"> 
 <c:forEach var="ct" items="${countries}"> 
  <option value="${ct.id}">${ct.name}</option> 
 </c:forEach>
   
</select>
</body>
</html>