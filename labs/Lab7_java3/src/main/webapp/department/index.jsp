<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Department Management</title>
<style>
    body { font-family: Arial, sans-serif; margin: 20px; }
    table { width: 100%; border-collapse: collapse; margin-top: 15px; }
    th, td { border: 1px solid #ccc; padding: 8px; text-align: left; }
    th { background-color: #f2f2f2; }
    input, textarea, button { margin: 5px 0; padding: 5px; width: 300px; }
    button { width: 100px; margin-right: 5px; }
</style>
</head>
<body>

<h2>Department Management</h2>

<c:url var="path" value="/department" />

<form method="post">
    <label>Id:</label><br>
    <input name="id" value="${item.id}" placeholder="Enter Department ID"><br>

    <label>Name:</label><br>
    <input name="name" value="${item.name}" placeholder="Enter Department Name"><br>

    <label>Description:</label><br>
    <textarea name="description" rows="3" cols="40" placeholder="Enter Description">${item.description}</textarea><br>

    <hr>
    <button formaction="${path}/create">Create</button>
    <button formaction="${path}/update">Update</button>
    <button formaction="${path}/delete">Delete</button>
    <button formaction="${path}/reset">Reset</button>
</form>

<hr>


<table>
    <thead>
        <tr>
            <th>No.</th>
            <th>Id</th>
            <th>Name</th>
            <th>Description</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="d" items="${list}" varStatus="vs">
            <tr>
                <td>${vs.count}</td>
                <td>${d.id}</td>
                <td>${d.name}</td>
                <td>${d.description}</td>
                <td><a href="${path}/edit/${d.id}">Edit</a></td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>
