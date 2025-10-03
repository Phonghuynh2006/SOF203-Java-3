<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách quốc gia</title>
</head>
<body>
<a href="bai1_lab3">Bài1</a>||
<a href="bai2_lab3">Bài2</a>||
<a href="bai3_lab3">Bài3</a>||
<a href="bai4_lab3">Bài4</a>||
<hr/>
<select name="country"> 
 <c:forEach var="ct" items="${countries}"> 
  <option value="${ct.id}">${ct.name}</option> 
 </c:forEach>
   
</select>
</body>
</html>