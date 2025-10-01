<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 
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
<table border="2"> 
 <thead> 
  <tr> 
   <th>No.</th> 
   <th>Id</th> 
   <th>Name</th> 
  </tr> 
 </thead> 
 <tbody> 
  <c:forEach var="ct" items="${countries}" varStatus="vs"> 
  <tr> 
   <td>${vs.count +1 }</td> 
   <td>${ct.id}</td> 
   <td>${ct.name}</td> 
  </tr> 
  </c:forEach> 
 </tbody> 
</table>
</body>
</html>