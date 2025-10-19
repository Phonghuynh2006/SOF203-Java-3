<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Employee Management</h2>
<c:url var="path" value="/employee" />
<form method="post" enctype="multipart/form-data">
    <label>Id:</label><br>
    <input name="id" value="${item.id}"><br>
    <label>Name:</label><br>
    <input name="name" value="${item.name}"><br>
    <label>Gender:</label><br>
    <input type="radio" name="gender" value="true" ${item.gender?'checked':''}> Male
    <input type="radio" name="gender" value="false" ${!item.gender?'checked':''}> Female<br>
    <label>Salary:</label><br>
    <input name="salary" value="${item.salary}"><br>
    <label>Department:</label><br>
    <select name="departmentId">
        <c:forEach var="d" items="${departments}">
            <option value="${d.id}" ${d.id==item.departmentId?'selected':''}>${d.name}</option>
        </c:forEach>
    </select><br>
    <label>Photo:</label><br>
    <input type="file" name="photoFile"><br>
    <c:if test="${not empty item.photo}">
        <img src="${pageContext.request.contextPath}/uploads/${item.photo}" width="120">
    </c:if>
    <hr>
    <button formaction="${path}/create">Create</button>
    <button formaction="${path}/update">Update</button>
    <button formaction="${path}/delete">Delete</button>
    <button formaction="${path}/reset">Reset</button>
</form>
<hr>
<table border="1" width="100%">
    <thead>
        <tr>
            <th>No.</th><th>Id</th><th>Name</th><th>Gender</th>
            <th>Salary</th><th>Department</th><th>Photo</th><th></th>
        </tr>
    </thead>
    <tbody>  
        <c:forEach var="e" items="${list}" varStatus="vs">
            <tr>
                <td>${vs.count}</td>
                <td>${e.id}</td>
                <td>${e.name}</td>
                <td><c:choose><c:when test="${e.gender}">Male</c:when><c:otherwise>Female</c:otherwise></c:choose></td>
                <td>${e.salary}</td>
                <td>${e.departmentId}</td>
                <td><img src="${pageContext.request.contextPath}/uploads/${e.photo}" width="80"></td>
                <td><a href="${path}/edit/${e.id}">Edit</a></td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>